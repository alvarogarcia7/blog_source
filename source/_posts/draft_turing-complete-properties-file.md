---
published: false
categories:
  - sample
  - clojure
  - properties
  - environment
  - turing-complete
  - library
  - environ
  - application-properties
  - snippet
---

TODO expand on this post

TODO refactor this post to include the problem first, then the solution

TODO add reference to library ``environ`` (found [here](https://github.com/weavejester/environ))

A common ``application.properties``:

```
connection-pool-size=2
username=john.doe
password=1234a
```

With clojure, you can convert this into ``application-properties.clj`` [^1]:

[^1]: the full code can be found in [this file](https://github.com/alvarogarcia7/clojure-simple-sessions/blob/master/test/simple/application-properties.clj)

```lisp
(defn max-connection-pool-size []
  (inc 3))
(defn database-password []
  "1234a")
(defn username[]
  "john.doe")
```

and to read it [^2]:

[^2]: the full code can be found in [this file](https://github.com/alvarogarcia7/clojure-simple-sessions/blob/master/test/simple/repl-session-14.clj)

```lisp
(load-file "test/simple/application-properties.clj")

(max-connection-pool-size)
; 4

(database-password)
; "1234a"

(username)
; "john.doe"
```

As this code is expressed in clojure, arbitrary computations can be expressed (e.g., connect to a server to download the new properties, adjust properties based on system load), instead of the plain properties that can be expressed in a .properties file.

In my opinion, the way of using properties to do complex calculations are breaking the principle "Tell, don't Ask", sample:

```java
[... read application.properties into Properties properties...]

String serviceDiscoveryUrl = properties.get("service-discovery-url");

ServiceDiscovery serviceDiscovery = new ServiceDiscovery(serviceDiscoveryUrl);

List<URI> databases = serviceDiscovery.getDatabases();
List<URI> peers = serviceDiscovery.getPeers();
```

I should not have to tell ``ServiceDiscovery`` how to do this, it should be responsible to handle this itself.

A possible solution would be to move the responsibility of reading the properties to ``ServiceDiscovery`` but then it would have several responsibilities (i.e., reading the properties file, managing the service discovery).

Another possible solution would be to wrap the property-reading with a ``ServiceDiscovery`` (i.e., a dependency), thus moving to something like:

```java
ServiceDiscovery serviceDiscovery = new ServiceDiscovery(new ServiceDiscoveryURLPropertyReader("application.properties"));

List<URI> databases = serviceDiscovery.getDatabases();
List<URI> peers = serviceDiscovery.getPeers();
```

If you think of the first two lines only, this could be moved to an outside component (``ServiceDiscovery``). If we write it in clojure (fragment):

```lisp
(load-file "test/simple/application-properties.clj")
; responsibility of reading the properties file

(databases)
; List<URI>

(peers)
; List<URI>
```

and in the ``test/simple/application-properties.clj``:

```lisp
(defn get-from-webserver [type]
  """Implementation not given. Discovers the URIs for a given type"""
[])

(defn databases[]
  (get-from-webserver "db"))
  
(defn peers[]
  (get-from-webserver "peer"))
```

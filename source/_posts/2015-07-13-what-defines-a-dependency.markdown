---
layout: post
title: "What defines a dependency"
date: 2015-07-13 07:48:28 +0200
comments: true
categories: 
  - goos
  - java
  - code
  - fragment
  - dependency
  - notification
  - goos
  - listener
  - object-stereotype
---

A friend and I were arguing about this code ([fragment][fragment-registry-1]):

```java
public void register (final String userName)  {
    try {
        registeredUsers.add(new User(userName));
    } catch (AlreadyRegisteredUserException e) {
        resultListener.alreadyRegistered(userName);
    }
}
```

I would have said that ``resultListener`` is a dependency as, first, it was injected by the constructor, second, it is necessary for the execution (negative case).

He suggested that:

  * being injected through  the constructor is usually what happens with dependencies, but does not make it one (i.e., something can be injected by the constructor and not be a dependency)
  * what defines a dependency is related to the business: if this behavior is mandatory for the business, then it is a dependency. 

As a conclusion, ``resultListener`` would be a notification, as it business does not require it.

On a later commit, we decided to inject it to ``registeredUsers`` ([fragment][fragment-registered-users-1])

```java
public void add (User user, final RegistryResultListener resultListener) {
    if(contains(user)) {
        resultListener.alreadyRegistered(user.name());
        return;
    }

    users.add(user);
    resultListener.successfullyRegistered(user.name());
}
```

Note: for cases when no one needs to be informed about the users being registered or not, a null-object pattern will suffice, as there is no check for null reference in the parameter ``resultListener``.

Note: more information on object stereotypes can be found [here][object-stereotypes]


[fragment-registry-1]: https://github.com/alvarogarcia7/cos/blob/7bf866bdfb9006d73a0124e00152e55c520d98a4/src/main/java/users/Registry.java
[fragment-registered-users-1]: https://github.com/alvarogarcia7/cos/blob/c89bec1a2de388165676f095c2218afeb1321374/src/main/java/users/InMemoryRegisteredUsers.java
[object-stereotypes]: ../../../../2015/07/13/object-peer-stereotypes/
---
layout: post
title: "Tip: calling all methods in an Object in Ruby"
date: 2015-10-12 11:55:17 +0200
comments: true
categories: 
  - ruby
  - metaprogramming
  - object
  - method
---

In Ruby, you can query the methods an object accepts:

```ruby
pry(main)> 1.methods 
=> [:to_s,               
 :-@,                    
 :+,                     
 :-,                     
 :*,                     
 :/,                     
 :div,                   
 :%,                     
 :modulo,                
 :divmod,                
 :fdiv,                  
 ...
```

In case you want to call all methods, this can be useful:

```ruby
def call_all_methods(dest)
  dest.methods.map { |x|
    begin
      if x.to_s != "pry" then
        [method(x), dest.send(x)]
      end
    rescue StandardError => ex;
    end
  }.select { |x| not x.nil?}
end
```

usage:

```ruby
pry(main)> call_all_methods(1)
 [#<Method: Object#__binding__>, #<Binding:0x44fe608>],
 [#<Method: Object(PP::ObjectMixin)#pretty_print_instance_variables>, []],
 [#<Method: Object(PP::ObjectMixin)#pretty_print_inspect>, "1"],
 [#<Method: Object(Kernel)#nil?>, false],
 [#<Method: Object(Kernel)#hash>, 1048833383],
 [#<Method: Object(Kernel)#class>, Fixnum],
 [#<Method: Object(Kernel)#taint>, 1],
 [#<Method: Object(Kernel)#tainted?>, false],
 [#<Method: Object(Kernel)#untaint>, 1],
 [#<Method: Object(Kernel)#untrust>, 1],
 [#<Method: Object(Kernel)#untrusted?>, false],
 [#<Method: Object(Kernel)#trust>, 1],
 [#<Method: Object(Kernel)#freeze>, 1],
 ...
```
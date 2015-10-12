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

In case you want to call all methods, [this][call-all-methods] can be useful:

```ruby
def call_all_methods(object, *args) 
  # remove methods that modify the PRY environment or are too verbose
  exclusions = [:pry,
                :methods,
                :private_methods,
                :public_methods].map { |x| x.to_s}
  object.methods.map { |x|
    begin
      unless exclusions.include? x.to_s then
        [method(x), object.send(x, *args)]
      end
    rescue StandardError => ex;
      [x, ex]
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

[call-all-methods]: https://github.com/alvarogarcia7/ruby-simple-sessions/blob/master/call_all_methods.rb
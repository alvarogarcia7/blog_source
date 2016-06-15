---
categories:
- ruby
- metaprogramming
- object
- method
comments: true
date: 2015-10-12T11:55:17Z
title: 'Tip: calling all methods in an Object in Ruby'
url: /2015/10/12/calling-all-methods-in-a-ruby-object/
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

In case you want to call all methods, [this][call-all-methods] can be useful (plus its [tests][call-all-methods-test]):

```ruby
def call_all_methods(object, *args)
  # remove methods that modify the PRY environment or are too verbose
  success = {}
  error = {}
  exclusions = [:pry,
                :methods,
                :private_methods,
                :public_methods,
                :gem].map { |x| x.to_s}
  object.methods.each { |x|
    unless exclusions.include? x.to_s then
      begin
        if (args.empty?) then
          success[x] = object.__send__(x)
        else
          success[x] = object.__send__(x, *args)
        end
      rescue StandardError => ex
        error[x] = ex
      end
    end
  }

  success.select! { |x| not x.nil?}
  error.select! { |x| not x.nil?}

  {success: success, error: error}
end
```

usage:

```ruby
[51] pry(main)> call_all_methods(1)
=> {:success => 
[[:to_s, "1"],
 [:-@, -1],
 [:abs, 1],
 [:magnitude, 1],
 [:~, -2],
 [:to_f, 1.0],
 [:size, 4],
 [:zero?, false],
 [:odd?, true],
 [:even?, false],
 [:succ, 2],
 ...
```

also with parameters:

```ruby
[4] pry(main)> call_all_methods(1,1)
☺=> {:success=>
  [[:+, 2],
   [:-, 0],
   [:*, 1],
   [:/, 1],
```

Should you be interested in having this as a gem, please tell me (comments or [@alvarobiz](https://twitter.com/@alvarobiz))

[call-all-methods]: https://github.com/alvarogarcia7/ruby-simple-sessions/blob/master/call_all_methods/call_all_methods.rb
[call-all-methods-test]: https://github.com/alvarogarcia7/ruby-simple-sessions/blob/master/call_all_methods/call_all_methods_spec.rb
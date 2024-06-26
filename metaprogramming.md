# Metaprogramming

1. Instance method `Object#send`
* `send` is an alias of `__send__` method
* `send` is a public method

2. Instance method `Module#refine`
- Syntax:
```ruby
refine(mod) { block } → module
```
- Explain: Refine *mod* in the receiver.

3. Instance method `Module#using`
- Syntax:
```ruby
using(module) → self
```
- Explain: Import class refinements from *module* into the current class or module definition.

4. Keyword `alias`, Method `alias_method`
- Syntax:
```ruby
alias :new_name :old_name
```

but you need a comma when passing new_name and old_name to `alias_method`
```ruby
alias_method :new_name, :old_name
```

5. Instance method `Kernel#load`
- Usage: Loads and executes the Ruby program in the file *filename*
- Syntax:
```ruby
load(filename, wrap=false) -> true
```
- If the file doesn't exist when there is an attempt to load it, a **LoadError** will be raised
- If the optional *wrap* parameter is *true* , the loaded script will be executed under an anonymous module, protecting the calling program's global namespace. If the *wrap* parameter is a module, the loaded script will be executed under the given module. In no circumstance will any any local variables in the loaded file be propagated to the loading environment.
Example:
```ruby
# In Ruby 3.x
# In loaded.rb
puts foo

# In main.rb
module Bar
  def foo
    'bar'
  end
end

load 'example.rb', Bar
#=> 'bar'

load 'example.rb', true
#=> NameError
```
1. `BasicObject#instance_eval`: an instance method of `BasicObject` class

2. Instance method `Module#const_define?`
- Usage: Says whether *mod* or its ancestors have a constant with the given name:
- Syntax: 
```ruby
const_defined?(sym, inherit = true) -> true or false 
```
If the argument *sym* is not a valid constant name, a **NameError** is rasied with the message "wrong contant name *name*"

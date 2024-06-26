# Metaprogramming

1. Method `send`
* `send` is an alias of `__send__` method
* `send` is a public method

2. Method `refine`
- Syntax:
```ruby
refine(mod) { block } → module
```
- Explain: Refine *mod* in the receiver.

3. Method `using`
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

5. Method `load`
6. `BasicObject#instance_eval`: an instance method of `BasicObject` class

7. Instance method `Module#const_define?`
- Usage: Says whether *mod* or its ancestors have a constant with the given name:
- Syntax: 
```ruby
const_defined?(sym, inherit = true) -> true or false 
```
If the argument *sym* is not a valid constant name, a **NameError** is rasied with the message "wrong contant name *name*"

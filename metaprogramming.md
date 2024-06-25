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

4. Method `alias`
- Syntax:
```ruby
alias :new_name :old_name
```

5. Method `load`

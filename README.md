# ruby-gold-notes

1. Subtraction between `Date` classes is `Rational`
Other similar classes of operations are summerized below:
- Subtraction between `Time` classes is `Float`
- Subtraction between `DateTime` classes is `Rational`

2. Options available in Ruby
- `-l` : Execute `String#chop!` at the end of each line
- `-n`: cases Ruby to assume the following loop around your script, which makes it iterate over filename arguments somewhat like `sed -n` or `awk`
- `-p`: Similar to `-n` but output `$_`
- `-t`, `-f`: Not support
- `-d`: turns on debug mode, `$DEBUG` will set true
- `-r filename`: causes Ruby to load the file using `require`. It is useful with switches `-n` or `-p`
References: [options](https://ruby-doc.org/docs/ruby-doc-bundle/Manual/man-1.4/options.html)

3. `Object#methods`
- returns a list of the names of public and protected methods of *obj*. This will include all the methods accessible in *obj's* ancestors. If the optional parameter is *false*, it returns an array of *obj*'s public and protected singleton methods, the array will not include methods in modules included in *obj*
- Syntax: 
```ruby
methods(regular=true) -> array
```

4. `Module#using` cannot be called inside a method. If called, a **RuntimeError** will occur.

5. `Proc#yield` is the alias of `Proc#call`. So we can use each either
```ruby
yield args

or

block.call(args)

or

block[args]

or

block.yield(args)
```
6. If the `::` operator appears at the beginning, constant search is performed from the top level.

7. `BasicObject#method_missing` is called when a method is not found after following the inheritance chain. `BasicObject#method_missing` also follows the inheritance chain.

8. `%` notation
`%` is called % notation.
- `%a/ /`: There is no such notation
- `%/ /`: double quote string
- `%r/ /`: regular expression` 
- `%w/ /`: array whose elements are strings 
- Please refer to the [Ruby reference](https://docs.ruby-lang.org/ja/2.1.0/doc/spec=2fliteral.html#percent) for detailed explanation.

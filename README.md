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

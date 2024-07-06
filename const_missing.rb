class C
  def self.const_missing(const)
    puts "#{const} is undefined-setting it to 1."
    const_set(const, 1)
  end
end

puts C::A
puts C::A
# A is undefined-setting it to 1.
# 1 <= return value from const_set method
# 1 <= second call of C::A

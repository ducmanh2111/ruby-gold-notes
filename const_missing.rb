# class C
#   def self.const_missing(const)
#     puts "#{const} is undefined-setting it to 1."
#     const_set(const, 1)
#   end
# end

# puts C::A
# puts C::A
# A is undefined-setting it to 1.
# 1 <= return value from const_set method
# 1 <= second call of C::A

# =====NEXT QUESTION=====

class Foo
	def self.const_missing a
		p "#{a} is undefined in class #{self}"
	end

	def const_missing a
		p "#{a}"
	end
end

Foo::B
# "B is undefined in class Foo"

# =====NEXT QUESTION=====
# class Object
# 	def Object.const_missing a
# 		p "Constant #{a} is undefined in class #{self}"
# 	end
# end

# B
# "Constant B is undefined in class Object"

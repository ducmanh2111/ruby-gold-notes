# class Foo
# 	def self.const_missing a
# 		p "#{a}"
# 	end

# 	def const_missing a
# 		p "#{a}"
# 	end
# end

# Foo::B

class Object
	def Object.const_missing a
		p "#{a}"
	end
end

B

class C; end

module M
	refine C do
		def m1(value)
			p "m1 in refine C block"
			super value - 100
		end
	end
end

class C
	def m1(value)
		puts "m1 in class C"
		value - 100
	end
end

using M

class K < C
	def m1(value)
		puts "m1 in class K"
		super value - 100
	end
end

puts K.new.m1 400
# puts C.new.public_methods.include? :m1	#=> true
# puts C.new.public_methods

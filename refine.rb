# class C; end

# module M
# 	refine C do
# 		def m1(value)
# 			p "m1 in refine C block"
# 			super value - 100
# 		end
# 	end
# end

# class C
# 	def m1(value)
# 		puts "m1 in class C"
# 		value - 100
# 	end
# end

# using M

# class K < C
# 	def m1(value)
# 		puts "m1 in class K"
# 		super value - 100
# 	end
# end

# puts K.new.m1 400
# puts C.new.public_methods.include? :m1	#=> true
# puts C.new.public_methods

# =====NEXT QUESTION=====

# class C
#   def self.m1
#     200
#   end
# end

# module R
#   refine C do
# 		p self.class	#=> Refinement class
#     def self.m1
#       100
#     end
#   end
# end

# using R

# puts C.m1	#=> 200

# =====NEXT QUESTION=====

# class C
#   def self.m1
#     200
#   end
# end

# module R
#   refine C.singleton_class do
# 		p self.class	#=> Refinement class
#     def m1
#       100
#     end
#   end
# end

# using R

# puts C.m1

# =====NEXT QUESTION=====

# class C
#   def m1
# 		p "call m1 in base C class"
#     200
#   end
# end

# module R
#   refine C do
#     def m1
# 			p "call m1 in refine"
# 			# super
#       300
#     end
#   end
# end

# using R

# class C
#   def m1
# 		p "call m1 in overide m1"
# 		# super
#     100
#   end
# end

# puts C.new.m1

# =====NEXT QUESTION=====
# class C
#   def m1
#     400
#   end
# end

# module M
#   refine C do
#     def m1
#       100
#     end
#   end
# end

# class C
#   using M
# end

# puts C.new.m1 # 400

# =====NEXT QUESTION=====
class C
  def foo
    p "bar"
  end
end

module M
  refine C do
    def foo
      super
      p "foo method in the refinement class invoked!!"
    end
  end
end

class C
  using M
  
  def baz
    foo
  end
end

c = C.new
c.baz
# "bar"
# "foo method in the refinement class invoked!!"

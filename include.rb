# class C
#   @@val = 10
# end

# module B
#   @@val = 30
# end

# module M
#   include B
#   p @@val
#   @@val = 20

#   p @@val

#   class << C
#     p @@val
#     # p ancestors
#   end
# end

# class N < C
#   p @@val

#   class << self
#     # p ancestors
#   end
# end

# =====NEXT QUESTION=====

# module M
#   def foo
#     super
#     puts "M#foo"
#   end
# end

# class C2
#   def foo
#     puts "C2#foo"
#   end
# end

# class C < C2
#   def foo
#     super
#     puts "C#foo"
#   end
#   include M
# end

# C.new.foo
# C2#foo
# M#foo
# C#foo

# =====NEXT QUESTION=====

# module M
#   def refer_const
#     CONST
#   end
# end

# module E
#   CONST = '010'
# end

# class D
#   CONST = "001"
# end

# class C < D
#   include E
#   include M
#   CONST = '100'
# end

# c = C.new
# p c.refer_const #=> uninitialized constant M::CONST (NameError)

# =====NEXT QUESTION=====

module M
  def self.class_m
    p self
    "M.class_m"
  end
end

class C
  include M
  extend M
end

p C.methods.include? :class_m #=> false
p M.class_m #=> "M.class_m"
p C.class_m #=> NoMethodError

# =====NEXT QUESTION=====
class C
protected
  def initialize
  end
end
  
p C.new.methods.include? :initialize  # false

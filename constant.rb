# class Object
#   CONST = "100"
# end

# class C
#   CONST = "010"
#   class << self
#     CONST = "001"
#   end
# end

# p C::CONST
# p C.singleton_class.constants
# p C.class.constants

# =====NEXT QUESTION=====
# class Base
#   CONST = "Hello, world"
# end

# class C < Base
# end

# module P
#   CONST = "Good, night"
# end

# class Base
#   prepend P
# end

# module M
#   class C
#     CONST = "Good, evening"
#   end
# end

# module M
#   class ::C
#     def greet
#       CONST
#     end
#   end
# end

# p C.new.greet # "Good, night"

# =====NEXT QUESTION=====

# class C
#   CONST = "Good, night"
# end

# module M
#   CONST = "Good, evening"
# end

# module M
#   class C
#     CONST = "Hello, world"
#   end
# end

# module M
#   class ::C
#     p CONST
#   end
# end

# "Good, night"

# =====NEXT QUESTION=====

# module M
#   CONST = "Hello, world"
# end

# class M::C
#   def awesome_method
#     CONST
#   end
# end

# module M
#   class C
#     def awesome_method
#       CONST
#     end
#   end
# end

# p M::C.new.awesome_method # uninitialized constant M::C::CONST (NameError)

# =====NEXT QUESTION=====

# class Object
#   CONST = "1"
#   def const_succ
#     CONST.succ!
#   end
# end

# class Child1
#   p self.ancestors  # [Child1, Object, Kernel, BasicObject]
#   const_succ
#   class << self
#     # const_succ
#   end
# end

# class Child2
#   const_succ
#   def initialize
#     const_succ
#   end
# end

# Child1.new
# Child2.new

# p Object::CONST # 5

# =====NEXT QUESTION=====

# module M
#   @@val = 1
#   CONST = 1
#   @val = 1
# end

# class C
#   include M
  
#   p CONST

#   def foo
#     p "C::CONST = #{CONST}"
#     p "@@val in module M after include is: #{@@val}"
#     p "@val in module M after include is: #{@val}"
#   end

# end

# C.new.foo
# "C::CONST = 1"
# "@@val in module M after include is: 1"
# "@val in module M after include is: "

# =====NEXT QUESTION=====

# class Base
#   CONST = "Hello, world"
# end

# class C < Base
# end

# module P
#   CONST = "Good, night"
# end

# class Base
#   prepend P
# end

# module M
#   class C
#     CONST = "Good, evening"
#   end
# end

# module M
#   class ::C
#     def greet
#       CONST
#     end
#   end
# end

# p C.new.greet # "Good, night"

# =====NEXT QUESTION=====

class Object
  CONST = "1"
  def const_succ
    CONST.succ!
  end
end

class Child1
  const_succ
  class << self
    p self
    p CONST # "2"
    const_succ
  end
end

class Child2
  const_succ
  def initialize
    const_succ
  end
end

Child1.new
Child2.new

p Object::CONST # "5"

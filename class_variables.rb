# module M
#   CONST = 100
#   @@val = 75
#   @val = 50

#   class Parent
#     @@val = 100
#     # p CONST # 100
#     # p @@val # uninitialized class variable @@val in M::Parent (NameError)
#     # p @val  # nil
#   end

#   class Child < Parent
#     @@val += 50 # @@val = 100 + 50
#   end

#   if Child < Parent
#     @@val += 25 # @@val = 75 + 25
#   else
#     @@val += 30 # @@val = 75 + 30
#   end
# end

# p M::Child.class_variable_get(:@@val) # 150

# MARK: Class variables are determined lexically, but have the same scope as constants.

# =====NEXT QUESTION=====
# class M
#   CONST = 1
#   @@val = 2
#   @val = 3
# end

# class N < M
#   p CONST # 1
#   p @@val # 2
#   p @val  # nil
# end

# =====NEXT QUESTION=====

# class BaseClass
#   private

#   def greet
#     # @val = 1
#     puts "Hello World! with @val=: #{@val} in BaseClass#greet"
#     @val = 1
#   end
# end

# class ChildClass < BaseClass
#   def greet
#     @val = 2
#     super
#     puts "Hello World! with @val=: #{@val} in ChildClass#greet"
#   end
# end


# ChildClass.new.greet
# Hello World! with @val=: 2 in BaseClass#greet
# Hello World! with @val=: 1 in ChildClass#greet

# =====NEXT QUESTION=====

class C
  @val = 1

  def foo
    @val = 2
  end

  def self.foo
    @val = 3
  end

  class << self
    @val = 4  # This will not effect to C class because this is singleton's scoped class instance variable
  end
end

C.foo # This will set class instance variable @val = 3, which previously value is 1
p C.instance_variable_get(:@val)  # 3

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
class M
  CONST = 1
  @@val = 2
  @val = 3
end

class N < M
  p CONST # 1
  p @@val # 2
  p @val  # nil
end

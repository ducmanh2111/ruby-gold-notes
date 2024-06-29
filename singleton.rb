# class N
#   def self.foo
#     p "class method foo in class N invoked!"
#   end

#   class << self
#     def foo
#       p "instance method foo in singleton class of N's instance invoked!"
#     end
#   end
# end

# class M < N
#   def self.foo
#     p "class method foo in class M invoked!"
#   end

#   class << self
#     def foo
#       super
#       p "instance method foo in singleton class of M's instance invoked!"
#     end
#   end
# end

# M.foo
# "instance method foo in singleton class of N's instance invoked!"
# "instance method foo in singleton class of M's instance invoked!"
# p M.singleton_class.ancestors
# [#<Class:M>, #<Class:N>, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]
# p M.ancestors
# [M, N, Object, Kernel, BasicObject]
# p M.new.singleton_methods(false)
#=> []

# p M.singleton_methods
#=> [:foo]

# =====NEXT QUESTION=====

# class C
#   @@val = 5
#   class << self
#     @@val = 10
#   end

#   def foo
#     @@val += 20
#   end
# end

# c = C.new
# c.foo
# p C.class_variable_get(:@@val)
# #=> 30

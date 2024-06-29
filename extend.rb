# module Parent
#   def method_1
#     __method__
#   end
# end

# # Option1
# # module Child
# #   extend Parent
# # end

# # Option2
# module Child
#   include Parent
#   extend self
# end

# p Child::method_1 #=> :method_1
# p Child.method_1  #=> :method_1
# # Just a random test for fun, at this time I know I can use Class::method_name to invoke a class method
# # p Child::name #=> "Child"
# p "Ancestors of Child's singleton class: #{Child.singleton_class.ancestors}"
# p "Ancestors of Child class: #{Child.ancestors}"

# =====NEXT QUESTION=====

# module M
#   def foo
#     p "M#foo invoked!"
#   end
# end

# module N
#   def foo
#     p "N#foo invoked!"
#   end
# end

# module P
#   prepend M,N
# end

# class C
#   include P
# end

# p "Ancestors of P is: #{P.ancestors}"
# # "Ancestors of P is: [M, N, P]"
# # So it will be equivalent to syntax:
# # module P
# #   prepend N
# #   prepend M
# # end
# # Please remember that prepend(module,...) will invoke on each parameters in reverse order.
# p "Ancestors of class C is: #{C.ancestors}"
#=> "Ancestors of class C is: [C, M, N, P, Object, Kernel, BasicObject]"

# =====NEXT QUESTION=====
# module M
  
# end

# module N
  
# end

# class C
#   include M,N
#   prepend M,N
#   extend M,N
# end

# p "Ancestors of class C is: #{C.ancestors}"
# #=> "Ancestors of class C is: [M, N, C, M, N, Object, Kernel, BasicObject]"
# # To summarize: Module#prepend like Array#unshift method, whild Module#include like Array#append (or Array#push) method.

# p "Ancestors of singleton class of C is: #{C.singleton_class.ancestors}"
# #=> "Ancestors of singleton class of C is: [#<Class:C>, M, N, #<Class:Object>, #<Class:BasicObject>, Class, Module, Object, Kernel, BasicObject]"

# =====NEXT QUESTION=====

module M
  def class_m
    "class_m"
  end
end

class C
  include M
  extend M
end

p C.methods.include? :class_m
#=> true
p C.new.methods.include? :class_m
#=> true

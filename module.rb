# module M
#   def method_a
#     __method__
#   end
# end

# class C
#   include M
# end

# class C
#   def method_b
#     __method__
#   end
# end

# module M
#   def method_b
#     __method__
#   end
# end

# p C.new.method_a
# p C.new.method_b
# p C.new.public_methods.include? :method_a #=> true
# p C.new.public_methods.include? :method_b #=> true

# =====NEXT QUESTION=====

# module M
#   def self.foo
#     [1,2,3].each do |i|
#       bar
#     end
#   end

#   def self.bar
#     p "bar invoked!!"  
#   end
# end

# M.foo
# "bar invoked!!"
# "bar invoked!!"
# "bar invoked!!"

# =====NEXT QUESTION=====

class C
end

module M
  def self.foo
    puts "self in module M is: #{self}"
    wrapper_module = self

    C.send(:define_method, :bar) do |*args, **kwargs|
      puts "args is: #{args}"
      puts "kwargs is: #{kwargs}"
      puts "self is: #{self}"
      puts "wrapper_module is: #{wrapper_module}"
    end
  end
end

M.foo
#=> self in module M is: M
C.new.bar(1,2,3, a: 1)
# args is: [1, 2, 3]
# kwargs is: {:a=>1}
# self is: #<C:0x00007fae779cb990>
# wrapper_module is: M

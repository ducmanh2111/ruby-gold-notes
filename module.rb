module M
  def method_a
    __method__
  end
end

class C
  include M
end

# class C
#   def method_b
#     __method__
#   end
# end

module M
  def method_b
    __method__
  end
end

p C.new.method_a
p C.new.method_b
p C.new.public_methods.include? :method_a #=> true
p C.new.public_methods.include? :method_b #=> true

class C
  def self.method_added(m)
    puts "Method #{m.inspect} was just defined in class #{self}"
  end

  def a_new_instance_method
  end

  def self.some_class_method() end
end

# Method :a_new_instance_method was just defined in class C
# So this callback was not triggered when define a class method.
# So what is a callback when I define a class method? 
# Okay, that is BasicObject#singleton_method_added. Let's move to another file.

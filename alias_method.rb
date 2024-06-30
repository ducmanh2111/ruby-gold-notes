class BaseClass
  private

  def greet
    puts "Hello World!"
  end
end

class ChildClass < BaseClass
  alias_method :original_greet, :greet

  def greet
    p "ChildClass#greet invoked!!"
    original_greet
  end
end

class BaseClass
  private

  def greet
    puts "private BaseClass#greet re-defined invoked!"
  end
end


ChildClass.new.greet  # "Hello World!"
# ChildClass.new.original_greet # private method `original_greet' called for #<ChildClass:0x00007f3b7777bdc0> (NoMethodError)

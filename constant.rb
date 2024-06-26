class Object
  CONST = "100"
end

class C
  CONST = "010"
  class << self
    CONST = "001"
  end
end

p C::CONST
p C.singleton_class.constants
p C.class.constants

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

class C
  CONST = "Good, night"
end

module M
  CONST = "Good, evening"
end

module M
  class C
    CONST = "Hello, world"
  end
end

module M
  class ::C
    p CONST
  end
end

# "Good, night"

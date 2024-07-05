# module M
#   class << self
#     def included(c)
#       puts "I have just been mixed into #{c}"
#     end
#   end  
# end

# class C
#   class D
#     include M
#   end
# end

# "I have just been mixed into C::D"

# =====NEXT QUESTION=====

module M
  class << self
    def included(c1)
      def c1.a_class_method
        puts "Now the class has a new class method."
      end
    end
  end

  def an_inst_method
    puts "This module supplies this instance method."
  end
end

class C
  include M
end

c = C.new
c.an_inst_method  # This module supplies this instance method.
C.a_class_method  # Now the class has a new class method.

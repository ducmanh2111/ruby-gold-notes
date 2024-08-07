# class Class
#   def method_missing(id, *args)
#     puts "Class#method_missing"
#   end
# end
# class A
#   def method_missing(id, *args)
#     puts "A#method_missing"
#   end
# end
# class B < A
#   def method_missing(id, *args)
#     puts "B#method_missing"
#   end
# end

# B.dummy_method  # Class#method_missing

# =====NEXT QUESTION=====

class C
  def method_missing method_name
    puts method_name
  end

  def self.method_missing method_name
    p method_name
  end
end

C.new.b # b
C.b # :b

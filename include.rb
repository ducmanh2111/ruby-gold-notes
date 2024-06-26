# class C
#   @@val = 10
# end

# module B
#   @@val = 30
# end

# module M
#   include B
#   p @@val
#   @@val = 20

#   p @@val

#   class << C
#     p @@val
#     # p ancestors
#   end
# end

# class N < C
#   p @@val

#   class << self
#     # p ancestors
#   end
# end

# =====NEXT QUESTION=====

module M
  def foo
    super
    puts "M#foo"
  end
end

class C2
  def foo
    puts "C2#foo"
  end
end

class C < C2
  def foo
    super
    puts "C#foo"
  end
  include M
end

C.new.foo
# C2#foo
# M#foo
# C#foo

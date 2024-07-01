# class String
#   alias :hoge :reverse
#   # alias hoge reverse

#   # alias_method :hoge, :reverse
#   # alias_method "hoge", "reverse"
# end

# p "12345".hoge

# =====NEXT QUESTION=====

def method
  puts "Hello World"
end

alias old_method method

def method
  old_method
  puts "Hello, Ruby World"
end
method

# => Hello World
# => Hello, Ruby World

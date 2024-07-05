# def m1(*)
#   str = yield if block_given?
#   p "m1 #{str}"
# end

# def m2(*)
#   str = yield if block_given?
#   p "m2 #{str}"
# end

# m1 m2 do  #=> equivalent to m1(m2) do ... end
#   "hello"
# end

# Output
# "m2 "
# "m1 hello"

# =====NEXT QUESTION=====

# def m1(*)
#   str = yield if block_given?
#   p "m1 #{str}"
# end

# def m2(*)
#   str = yield if block_given?
#   p "m2 #{str}"
# end

# m1 m2 {
#   "hello"
# }

# =====NEXT QUESTION=====

# def foo
#   [1,2,3].each do |i|
#     # return if i == 2  # this will return from enclosing method, you will only see value: 1
#     next if i == 2  # this will make result: 1  3

#     puts i
#   end
# end
# foo

# =====NEXT QUESTION=====

def foo
  yield(5) if block_given?

  p "Done!"
end

foo do |max|
  i = rand
  return puts(i * 10) if (i * 10) > 5

  puts "now we will check for next clause"
  next if (i * 10) < 3
end

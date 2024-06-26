def m1(*)
  str = yield if block_given?
  p "m1 #{str}"
end

def m2(*)
  str = yield if block_given?
  p "m2 #{str}"
end

m1 m2 do  #=> equivalent to m1(m2) do ... end
  "hello"
end

# Output
# "m2 "
# "m1 hello"

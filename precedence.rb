v1 = 1 / 2 == 0
v2 = !!v1 or raise RuntimeError
puts v2 and false # true
puts v2 && false  # false

module C
  @a = 'a'
  @b = 'b'

  class << self
    attr_accessor :a
    attr_accessor :b
    attr_accessor :c
  end
end

p C.a
p C.c

class C
  @@val = 10
end

module B
  @@val = 30
end

module M
  include B
  p @@val
  @@val = 20

  p @@val

  class << C
    p @@val
    # p ancestors
  end
end

class N < C
  p @@val

  class << self
    # p ancestors
  end
end

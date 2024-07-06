class C
  class << self
    def inherited(subclass)
      puts "#{self} just got subclassed by #{subclass}"
    end
  end
end

class D < C
end

class E < D
end

# C just got subclassed by D
# D just got subclassed by E

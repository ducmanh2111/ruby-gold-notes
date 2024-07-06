module M
  class << self
    def included(c)
      puts "#{self} included by #{c}"
    end

    def extended(obj)
      puts "#{self} extended by #{obj}"
      @obj = obj

      def foo
        puts "#{@obj}::#{__method__} invoked!!"
      end

      foo
    end
  end
end

class N
  extend M
end
# M extended by N <= This is an callback
# N::foo invoked!! <= ::foo method is being triggered!

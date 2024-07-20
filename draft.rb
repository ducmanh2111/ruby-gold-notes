# p Class.method_defined? :new #=> ture
# p String.method_defined? :new #=> false
# p Class.singleton_class.method_defined? :new #=> ture
# p String.singleton_class.method_defined? :new #=> ture

# =====NEXT QUESTION=====

# def hoge(*args, &block)
#   block.call(args)
# end

# hoge(1,2,3,4) do |*args|
#   p args.length < 0 ? "hello" : args
# end

# =====NEXT QUESTION=====
# class Array
#   def succ_each(step = 1)
#     return enum_for(:succ_each, step) unless block_given?

#     each do |int|
#       yield int + step
#     end
#   end
# end

# p [98, 99, 100].succ_each(2).map {|succ_chr| succ_chr.chr}  # ["d", "e", "f"]

# [101, 102, 103].succ_each(5) do |succ_chr|
#   p succ_chr.chr
# end

# "j"
# "k"
# "l"

# =====NEXT QUESTION=====

# def foo(x)
#   if x == 1
#     return 1
#   else
#     puts 'go to else'
#   end

#   'returned!!!'
# end

# p foo(1)  # 1
# p foo(2)

# go to else
# "returned!!!"

# =====NEXT QUESTION=====

def foo(x)
  begin
    if x == 1
      return 1
    else
      puts 'go to else'
    end
  rescue StandardError => e
    puts e.message
  else
    p 'go to else of begin..rescue..else'
  end

  'returned!!!'
end

p foo(2)

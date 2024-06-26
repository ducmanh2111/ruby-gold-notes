# m = Module.new

# m.instance_eval do
# 	m.instance_variable_set :@block, Module.nesting
#   p Module.nesting
# end

# m.instance_eval(<<-EVAL)
# 	m.instance_variable_set :@eval, Module.nesting
#   p Module.nesting
# EVAL

# block = m.instance_variable_get :@block
# _eval = m.instance_variable_get :@eval

# puts block.size	#=> 0
# puts _eval.size #=> 1


# =====NEXT QUESTION=====

# mod = Module.new

# mod.module_eval do
#   EVAL_CONST = 100
# end

# puts "EVAL_CONST is defined? #{mod.const_defined?(:EVAL_CONST)}"	#=> true
# puts "EVAL_CONST is defined? #{Object.const_defined?(:EVAL_CONST)}"	#=> true
# puts "EVAL_CONST is defined? #{Object.const_defined?(:EVAL_CONST, false)}"	#=> true

# =====NEXT QUESTION=====

# class KlassWithSecret
#   def initialize
#     @secret = 99
#   end
#   private
#   def the_secret
#     p "Ssssh! The secret is #{@secret}. called from self: #{self}"
#   end
# end
# k = KlassWithSecret.new
# k.instance_eval do
#   @secret
#   p Module.nesting
# end          #=> 99
# k.instance_eval { the_secret }       #=> "Ssssh! The secret is 99."
# k.instance_eval {|obj| obj == self } #=> true

# =====NEXT QUESTION=====

module C
  EVAL_X = 1
end

puts "EVAL_CONST is defined? #{C.const_defined?(:EVAL_X)}"
puts "EVAL_CONST is defined? #{Object.const_defined?(:EVAL_X)}"
puts "EVAL_CONST is defined? #{Object.const_defined?(:EVAL_X, false)}"

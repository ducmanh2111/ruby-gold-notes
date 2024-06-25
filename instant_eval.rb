# m = Module.new

# m.instance_eval do
# 	m.instance_variable_set :@block, Module.nesting
# end

# m.instance_eval(<<-EVAL)
# 	m.instance_variable_set :@eval, Module.nesting
# EVAL

# block = m.instance_variable_get :@block
# _eval = m.instance_variable_get :@eval

# puts block	#=> 0
# puts _eval #=> 1


# =====NEXT QUESTION=====

mod = Module.new

mod.module_eval do
  EVAL_CONST = 100
end

puts "EVAL_CONST is defined? #{mod.const_defined?(:EVAL_CONST)}"	#=> true
puts "EVAL_CONST is defined? #{Object.const_defined?(:EVAL_CONST)}"	#=> true


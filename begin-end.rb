# def foo(a = true)
# 	if a
# 		p "puts when a is true"
# 		return "a is true, return !!"
# 	else
# 		raise
# 	end
# rescue RuntimeError => e
# 	p "catched error in rescue block"
# 	"rescue return !!"
# ensure
# 	p "ensure block come in"
# 	"ensure return"
# end

# p foo
# "puts when a is true"
# "ensure block come in"
# "a is true, return !!" <= return value from #foo

# p foo(false)
# "catched error in rescue block"
# "ensure block come in"
# "rescue return !!"	<= return value from #foo

# =====NEXT QUESTION=====

def foo(a = true)
	begin
		if a
			p "puts when a is true"
			return "a is true, return!!"
		else
			raise
		end
	rescue StandardError => e
		p "cached StandardError in rescue block"
		"rescue return!!"
	else
		p "else block"
		"else return!!"
	ensure
		p "ensure block"
		"ensure return!!"
	end
end

# p foo
# "puts when a is true"
# "else block"
# "ensure block"
# "else return!!" <= return value from #foo

p foo(false)
# "cached StandardError in rescue block"
# "ensure block"
# "rescue return!!"	<= return value from #foo

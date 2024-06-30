obj = Object.new
obj.instance_eval { @foo, @bar = nil }
p obj.instance_variables  # [:@foo, :@bar]

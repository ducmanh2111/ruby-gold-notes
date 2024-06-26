class Foo
  def initialize(num)
    @hoge = num
  end
end

num = (1..99).to_a.shuffle.first
foo = Foo.new(num)
p foo
puts foo.inspect

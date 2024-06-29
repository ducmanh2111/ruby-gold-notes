f = Fiber.new do |total|
  Fiber.yield total + 10
end
p f #<Fiber:0x00007ff451fac718 fiber.rb:1 (created)>
p f.resume(100) + p f.resume(5) # 115

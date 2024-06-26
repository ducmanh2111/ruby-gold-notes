characters = ["a", "b", "c"]

characters.each do |chr|
  chr.freeze
end

upcased = characters.map do |chr|
  chr.upcase
end

p upcased

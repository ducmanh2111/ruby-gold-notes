class String
  alias :hoge :reverse
  # alias hoge reverse

  # alias_method :hoge, :reverse
  # alias_method "hoge", "reverse"
end

p "12345".hoge

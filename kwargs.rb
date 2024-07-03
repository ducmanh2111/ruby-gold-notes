# def add(x:, y:, **params)
#   z = x + y

#   params[:round] ? z.round : z
# end
# p add(x: 3.75, y: 3, round: true)  # 7
# options = {:round => true}; p add(x: 3.75, y: 3, **options)  # 7
# p add(x: 2.75, y: 5.25, round: )  #NameError
# p add(x: 3, y: 4) # 7

# =====NEXT QUESTION=====

def foo(a, *b, **c, &d)
  [a, b, c[:opt], d]
end

# def bar(a, *b, **c, &d)
#   foo(a, *b, **c, &d)
# end
#=> OK

# def bar(...)
#   foo(...)
# end
#=> OK

# def bar(a, *b, **c, &d)
#   foo(...)
# end
# # => Syntax error

p bar(1, 2, 3, opt: 4)  # [1, [2,3], 4, nil]

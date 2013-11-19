def a_method(a, b)
  return yield(a, b) if block_given?
  'no block'
end

# a_method(1, 2) {|x, y| (x + y) * 3 } # => 10

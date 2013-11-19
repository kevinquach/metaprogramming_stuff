def double(callable_object)
  callable_object.call * 2
end

l = lambda { return 10 }
double(l) # => 20

def another_double
  p = Proc.new { return 10 }
  result = p.call
  return result * 2 # unreachable code!
end

another_double # => 10

def double(callable_object)
  callable_object.call * 2
end


p = Proc.new { return 10 }
# This fails with a LocalJumpError:
# double(p)

p = Proc.new { 10 }
double(p) # => 20




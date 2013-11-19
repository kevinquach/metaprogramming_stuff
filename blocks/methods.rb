class MyClass
  def initialize(value)
    @x = value
  end

  def my_method
    @x
  end
end

object = MyClass.new(1)
m = object.method :my_method
m.call # => 1

# You can detach a method from its object with Method#unbind(), which
# returns an UnboundMethod object. You can't execute an UnboundMethod,
# but you can turn it back into a Method by binding it to an object.

unbound = m.unbind
another_object = MyClass.new(2)
m = unbound.bind(another_object)
m.call # => 2

# Blocks (they aren't really "objects," but they are still "callable"):
#   Evaluated in the scope in which they're defined.
# Procs: Objects of class Proc. Like blocks, they are evaluated in the
#   scope where they're defined.
# Lambdas: Also objects of class Proc but subtly different from regular
#   procs. They're closures like blocks and procs, and as such they're
#   evaluated in the scope where they're defined.
# Methods: Bound to an object, they are evaluated in that object's scope.
#   They can also be unbounded from their scope and rebound to the scope
#   of another object.
#
# Different callable objects exhibit subtly different behaviors. In methods
# and lambdas, RETURN returns from the callable object, while in procs
# and blocks, RETURN returns from the callable object's original context.
# Different callable objects also reat differently to calls with the wrong
# arity. Methods are stricter, lambdas are almost as strict (save for some
# corner cases), and procs and blocks are more tolerant.
#
# You can still convert from one callable object to another, such as by using
# Proc.new(), Method#to_proc(), or the & operator.

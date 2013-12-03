def my_method(*args)
  args.map {|arg| arg.reverse}
end

my_method('abc', 'xyz', '123') # => ["cba", "zyx", "321"]

class C
  def an_attribute
    @attr
  end
end

obj = C.new

a_variable = 100

# flat scope:
obj.instance_eval do
 @attr = a_variable
end

obj.an_attribute # => 100

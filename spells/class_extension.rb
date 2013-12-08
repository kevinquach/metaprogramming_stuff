# Define class methods by mixing a module into a class's eigenclass

class C; end

module M
  def my_method
    'a class method'
  end
end

class << C
  include M
end

C.my_method # => "a class method"

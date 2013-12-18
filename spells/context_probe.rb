class C
  def initialize
    @x = "a private instance variable"
  end
end

obj = C.new
obj.instance_eval { @x } # => "a private instance variable"

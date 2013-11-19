class MyClass
  def initialize
    @v = 1
  end
end

obj = Myclass.new
obj.instance_eval do
  self
  @v
end

# Enable a module to extend its includer through a Hook Method
#
module M
  def self.included(base)
    base.extend(ClassMethods)
  end

  module ClassMethods 
    def my_method
    'a class method'
    end 
  end
end

class C
  include M
end

C.my_method # => "a class method"


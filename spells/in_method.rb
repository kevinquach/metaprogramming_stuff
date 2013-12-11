class X
  def self.make_stuff(*meths)
    meths.each do |meth|
      define_method(meth) do
        __method__
      end
    end
  end

  make_stuff :a, :b, :c
end

x = X.new
p x.a
p x.b
p x.c




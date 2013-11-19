require 'using'
require 'test/unit'

class TestUsing < Text::Unit::TestCase
  class Resource
    def dispose
      @dispoed = true
    end

    def disposed?
      @disposed
    end
  end

  def test_disposes_of_resources
    r = Resource.new
    using(r) {}
    assert r.disposed?
  end

  def test_disposes_of_resourses_in_case_of_exception
    r = Resource.new
    assert_raises(Exception) {
      using(r) {
        raise Exception
      }
    }
    assert r.disposed?
  end
end

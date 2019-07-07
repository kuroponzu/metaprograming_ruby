require 'test/unit'
require_relative 'with'

class TestWith < Test::Unit::TestCase
  class Resource
    def dispose
      @dispose = true
    end

    def disposed?
      @dispose
    end
  end

  def test_disposes_of_resources
    r = Resource.new
    with(r) {}
    assert r.disposed?
  end

  def rest_dispose_of_resources_in_case_of_exception
    r = Resource.new
    assert_raises(Exception) do
      with(r) {
        raise Exception
      }
    end
    assert r.disposed?
  end
end

require_relative 'base2'

class MyTest2 < MyTest1

  def test_minus
    assert_equal 0, minus
  end
end

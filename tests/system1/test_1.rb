require 'minitest'
require_relative 'base1'
class MyTest < Minitest::Test
  include Base1

  def initialize(name)
    super
  end
  def test_addition
    haha
    assert_equal 4, 2 + 2
  end
end

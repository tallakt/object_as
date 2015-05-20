require 'minitest/autorun'
require_relative '../lib/object_as_no_refinements'

class TestObjectAs < MiniTest::Test
  def test_that_kitty_can_eat
    assert_equal 1.as {|n| n + n }, 2
  end
end

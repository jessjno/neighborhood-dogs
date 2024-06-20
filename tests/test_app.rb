require 'minitest/autorun'
require './app'

class TestApp <  Minitest::Test
  def test_add_dog
    dog = Dog.new
    assert_equals "HiBentley"
  end
end

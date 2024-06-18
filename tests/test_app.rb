require 'minitest/autorun'
require './app'

class TestApp <  Minitest::Test
  def test_add_dog
    dog = Dog.new
  end
end

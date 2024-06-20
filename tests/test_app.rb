require 'minitest/autorun'
require_relative '../neighborhood'

class TestNeighborhood < Minitest::Test
  def setup
    @neighborhood = Neighborhood.new
  end

  def test_add_new_dog
    result = @neighborhood.add_new_dog("Bentley", "Mix", "Gold")
    assert_equal "Bentley has been added to Neighborhood Dogs", result, "Error in adding new dog"
    assert_equal 1, @neighborhood.dogs.size
    assert_equal "Bentley", @neighborhood.dogs[0].name
    assert_equal "Mix", @neighborhood.dogs[0].breed
    assert_equal "Gold", @neighborhood.dogs[0].color
  end

  def test_view_all_dogs
    @neighborhood.add_new_dog("Bentley", "Mix", "Gold")
    result = @neighborhood.view_all_dogs
    assert_equal "Bentley - Mix Gold", result, "Error in viewing all dogs"
  end

  def test_view_all_dogs_no_dogs
    result = @neighborhood.view_all_dogs
    assert_equal "There are no dogs in this Neighborhood", result, "Error in viewing all dogs when no dogs are present"
  end
end

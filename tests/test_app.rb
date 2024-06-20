require 'minitest/autorun'
require './app'

class TestApp <  Minitest::Test
  def test_add_new_dog
    result = @neighborhood.add_new_dog("Buddy", "Golden Retriever", "Golden")
    assert_equal "Buddy has been added to Neighborhood Dogs", result, "Error in adding new dog"
    assert_equal 1, @neighborhood.dogs.size
    assert_equal "Buddy", @neighborhood.dogs[0].name
    assert_equal "Golden Retriever", @neighborhood.dogs[0].breed
    assert_equal "Golden", @neighborhood.dogs[0].color
  end

  def test_view_all_dogs
    @neighborhood.add_new_dog("Buddy", "Golden Retriever", "Golden")
    result = @neighborhood.view_all_dogs
    assert_equal "Buddy - Golden Retriever Golden", result, "Error in viewing all dogs"
  end

  def test_view_all_dogs_no_dogs
    result = @neighborhood.view_all_dogs
    assert_equal "There are no dogs in this Neighborhood", result, "Error in viewing all dogs when no dogs are present"
  end
end

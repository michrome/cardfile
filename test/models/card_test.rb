require 'test_helper'

class CardTest < ActiveSupport::TestCase
  test "should run a case-insensitive search" do
    assert_equal 2, Card.search('Toyota').count
  end

  test "should find a dd/mm/yyyy date" do
    assert_equal 1, Card.search('06/07/2011').count
  end

  test "should find a mm/yyyy date" do
    assert_equal 1, Card.search('07/2011').count
  end
end

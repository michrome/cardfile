require 'test_helper'

class CardTest < ActiveSupport::TestCase
  test "should run a case-insensitive search" do
    assert_equal 2, Card.search('Toyota').count
  end
end

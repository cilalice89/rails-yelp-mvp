require 'test_helper'

class Restaurants::ReviewsControllerTest < ActionDispatch::IntegrationTest
  test "should get new" do
    get restaurants_reviews_new_url
    assert_response :success
  end

end

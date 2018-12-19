require 'test_helper'

class Players::QuizzesControllerTest < ActionDispatch::IntegrationTest
  test "should get show" do
    get players_quizzes_show_url
    assert_response :success
  end

end

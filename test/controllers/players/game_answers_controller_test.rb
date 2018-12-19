require 'test_helper'

class Players::GameAnswersControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get players_game_answers_create_url
    assert_response :success
  end

end

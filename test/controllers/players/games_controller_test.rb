require 'test_helper'

class Players::GamesControllerTest < ActionDispatch::IntegrationTest
  test "should get create" do
    get players_games_create_url
    assert_response :success
  end

  test "should get show" do
    get players_games_show_url
    assert_response :success
  end

end

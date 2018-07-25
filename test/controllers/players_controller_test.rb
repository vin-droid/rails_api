require 'test_helper'

class PlayersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @player = players(:one)
  end

  test "should get index" do
    get players_url, as: :json
    assert_response :success
  end

  test "should create player" do
    assert_difference('Player.count') do
      post players_url, params: { player: { country_name: @player.country_name, first_name: @player.first_name, game: @player.game, last_name: @player.last_name, state_name: @player.state_name } }, as: :json
    end

    assert_response 201
  end

  test "should show player" do
    get player_url(@player), as: :json
    assert_response :success
  end

  test "should update player" do
    patch player_url(@player), params: { player: { country_name: @player.country_name, first_name: @player.first_name, game: @player.game, last_name: @player.last_name, state_name: @player.state_name } }, as: :json
    assert_response 200
  end

  test "should destroy player" do
    assert_difference('Player.count', -1) do
      delete player_url(@player), as: :json
    end

    assert_response 204
  end
end

class Player::GamePolicy < ApplicationPolicy
  def create?
    player_of_the_game?
  end

  def show?
    player_of_the_game?
  end

  private

  def player_of_the_game?
    record.player == user
  end
end

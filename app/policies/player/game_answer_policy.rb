class Player::GameAnswerPolicy < ApplicationPolicy
  def create?
    record.game.player == user
  end
end

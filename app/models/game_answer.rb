class GameAnswer < ApplicationRecord
  belongs_to :game
  belongs_to :answer

  after_commit :compute_score_in_game

  def compute_score
    answer.correct? ? 10 : 0
  end

  private

  def compute_score_in_game
    game.compute_score
  end

end

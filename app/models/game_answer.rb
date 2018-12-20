class GameAnswer < ApplicationRecord
  belongs_to :game
  belongs_to :answer

  after_create_commit :compute_score_in_game

  scope :confort_for, ->(quiz) { includes(:game, answer: :question).where(questions: { category: 'confort' }).where(games: { quiz_id: quiz.id }) }

  def compute_score
    if answer.correct?
      total = 30
      bonus = (10 - time_to_answer.to_i) * 10
      total += bonus if bonus.positive?
      return total
    end
    0
  end

  private

  def time_to_answer
    ends_at - start_at
  end

  def compute_score_in_game
    game.compute_score
  end

end

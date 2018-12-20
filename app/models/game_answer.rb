class GameAnswer < ApplicationRecord
  belongs_to :game
  belongs_to :answer

  after_create_commit :compute_score_in_game

  scope :confort_for, ->(quiz) { includes(:game, answer: :question).where(questions: { category: 'confort' }).where(games: { quiz_id: quiz.id }) }

  def compute_score
    total = answer.correct? ? 10 : 0
    case time_to_answer
    when 0.0...3.0
      total += 10
    when 3.0...5.0
      total += 5
    when 5.0...7.0
      total += 2
    end
    total
  end

  private

  def time_to_answer
    ends_at - start_at
  end

  def compute_score_in_game
    game.compute_score
  end

end

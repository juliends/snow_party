class Game < ApplicationRecord
  belongs_to :player
  belongs_to :quiz
  has_many :game_answers
  has_many :answers, through: :game_answers

  scope :time_related, -> (other_game) { where("created_at >= ?", other_game.created_at - 10.minutes).where("created_at <= ?", other_game.created_at + 10.minutes) }

  def latest_question
    unanswered_questions = quiz.questions.select do |question|
      !question.answered_during?(self)
    end
    unanswered_questions.first
  end

  def other_games_for_same_quiz
    self.class.time_related(self)
  end
end

class Game < ApplicationRecord
  belongs_to :player
  belongs_to :quiz
  has_many :game_answers
  has_many :answers, through: :game_answers

  def latest_question
    unanswered_questions = quiz.questions.select do |question|
      !question.answered_during?(self)
    end
    unanswered_questions.first
  end
end

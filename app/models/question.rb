class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers

  def answered_during?(game)
    game.answers.any? { |answer| answers.include?(answer) }
  end
end

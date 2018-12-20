class Question < ApplicationRecord
  belongs_to :quiz
  has_many :answers

  def answered_during?(game)
    game.answers.any? { |answer| answers.include?(answer) }
  end

  def confort_related?
    category == 'confort'
  end

  def movie_related?
    category == 'movie'
  end
end

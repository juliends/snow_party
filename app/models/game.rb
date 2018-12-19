class Game < ApplicationRecord
  belongs_to :player
  belongs_to :quiz
  has_many :game_answers
  has_many :answers, through: :game_answers
end

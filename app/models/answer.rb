class Answer < ApplicationRecord
  belongs_to :question
  has_many :game_answers
end

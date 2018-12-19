class Quiz < ApplicationRecord
  belongs_to :user
  has_many :games
  has_many :questions
  has_many :answers, through: :questions
end

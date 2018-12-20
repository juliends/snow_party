class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :games
  has_many :game_answers, through: :games
  has_many :quizzes, through: :games

  after_create_commit :enrich_player

  def username
    email.split('@').first
  end

  private

  def password_required?
    false
  end

  def enrich_player
    EnrichPlayerWorker.perform_async(id)
  end
end

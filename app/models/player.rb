class Player < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :games
  has_many :game_answers, through: :games
  has_many :quizzes, through: :games

  validates :gdpr_approval, inclusion: { in: [true],
    message: "Vous devez accepter les conditions pour jouer au quiz" }

  # after_create_commit :enrich_player
  after_create_commit :crate_lead

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

  def crate_lead
    Lead.create(email: self.email)
  end
end

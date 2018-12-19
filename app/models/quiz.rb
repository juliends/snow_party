class Quiz < ApplicationRecord
  belongs_to :user
  has_many :games
  has_many :players, through: :games
  has_many :questions
  has_many :answers, through: :questions

  def increment_live_players
    self.live_players += 1
    save
    broadcast_live_player
  end

  def decrement_live_players
    self.live_players -= 1
    save
    broadcast_live_player
  end

  private

  def broadcast_live_player
    ActionCable.server.broadcast("players_counter_quiz_#{id}", {
      message_partial: ApplicationController.renderer.render(
        partial: "shared/players_counter",
        locals: { quiz: self }
      )
    })
  end
end

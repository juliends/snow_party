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

  def good_confort_percentage
    game_answers = GameAnswer.confort_for(self)
    good_count = game_answers.count do |game_answer|
      game_answer.answer.content == "OUI"
    end
    (good_count * 100) / game_answers.count
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

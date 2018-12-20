class PlayersCounterChannel < ApplicationCable::Channel
  def subscribed
    quiz = Quiz.find_by(playable: true)
    stream_from "players_counter_quiz_#{quiz.id}"
    quiz.increment_live_players
  end

  def unsubscribed
    Quiz.find_by(playable: true).decrement_live_players
  end
end

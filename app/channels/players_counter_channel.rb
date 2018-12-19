class PlayersCounterChannel < ApplicationCable::Channel
  def subscribed
    stream_from "players_counter_quiz_#{params[:quiz_id]}"
    Quiz.find(params[:quiz_id]).increment_live_players
  end

  def unsubscribed
    Quiz.find(params[:quiz_id]).decrement_live_players
  end
end

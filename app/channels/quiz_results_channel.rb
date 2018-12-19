class QuizResultsChannel < ApplicationCable::Channel
  def subscribed
    stream_from "quiz_results_#{params[:quiz_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

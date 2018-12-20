class QuizNotificationChannel < ApplicationCable::Channel
  def subscribed
    stream_from "quiz_notifications_#{params[:quiz_id]}"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

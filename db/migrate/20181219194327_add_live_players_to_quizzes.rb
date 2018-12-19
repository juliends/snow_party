class AddLivePlayersToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :live_players, :integer, default: 0
  end
end

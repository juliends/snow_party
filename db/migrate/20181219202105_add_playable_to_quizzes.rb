class AddPlayableToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :playable, :boolean, default: false
  end
end

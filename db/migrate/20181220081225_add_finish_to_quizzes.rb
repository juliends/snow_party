class AddFinishToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :finish, :boolean, default: false
  end
end

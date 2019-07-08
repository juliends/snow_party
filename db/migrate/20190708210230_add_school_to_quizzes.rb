class AddSchoolToQuizzes < ActiveRecord::Migration[5.2]
  def change
    add_column :quizzes, :school, :boolean, default: false
  end
end

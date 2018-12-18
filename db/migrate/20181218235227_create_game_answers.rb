class CreateGameAnswers < ActiveRecord::Migration[5.2]
  def change
    create_table :game_answers do |t|
      t.references :game, foreign_key: true
      t.references :answer, foreign_key: true
      t.datetime :start_at
      t.datetime :ends_at

      t.timestamps
    end
  end
end

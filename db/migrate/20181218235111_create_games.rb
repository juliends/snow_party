class CreateGames < ActiveRecord::Migration[5.2]
  def change
    create_table :games do |t|
      t.references :player, foreign_key: true
      t.references :quiz, foreign_key: true
      t.integer :score

      t.timestamps
    end
  end
end

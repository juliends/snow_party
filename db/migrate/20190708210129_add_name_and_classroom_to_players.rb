class AddNameAndClassroomToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :name, :string
    add_column :players, :classroom, :string
  end
end

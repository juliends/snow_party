class AddLocationToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :location, :string
  end
end

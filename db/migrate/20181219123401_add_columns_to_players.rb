class AddColumnsToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :first_name, :string
    add_column :players, :last_name, :string
    add_column :players, :phone_number, :string
  end
end

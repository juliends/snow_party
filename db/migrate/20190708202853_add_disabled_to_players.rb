class AddDisabledToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :disabled, :boolean, default: false
  end
end

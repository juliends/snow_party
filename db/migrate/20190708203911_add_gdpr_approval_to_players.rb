class AddGdprApprovalToPlayers < ActiveRecord::Migration[5.2]
  def change
    add_column :players, :gdpr_approval, :boolean, default: false
  end
end

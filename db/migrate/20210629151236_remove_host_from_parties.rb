class RemoveHostFromParties < ActiveRecord::Migration[6.1]
  def change
    remove_column :parties, :host_id, :integer
  end
end

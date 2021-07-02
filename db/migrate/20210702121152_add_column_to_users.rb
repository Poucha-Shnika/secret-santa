class AddColumnToUsers < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :party_id, :integer
    add_foreign_key :users, :parties
  end
end

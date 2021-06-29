class CreateLists < ActiveRecord::Migration[6.1]
  def change
    create_table :lists do |t|
      t.references :santa, null: false, foreign_key: { to_table: 'users' }
      t.references :receiver, null: false, foreign_key: { to_table: 'users' }
      t.references :party, null: false, foreign_key: { to_table: 'parties' }

      t.timestamps
    end
  end
end

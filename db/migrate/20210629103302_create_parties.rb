class CreateParties < ActiveRecord::Migration[6.1]
  def change
    create_table :parties do |t|
      t.date :date
      t.string :location
      t.string :price
      t.text :message
      t.references :host, foreign_key: { to_table: 'users' }

      t.timestamps
    end
  end
end

class CreateReservations < ActiveRecord::Migration[6.1]
  def change
    create_table :reservations do |t|
      t.date :start_date
      t.date :end_date
      t.integer :price
      t.integer :total
      t.boolean :status
      t.references :midget, null: false, foreign_key: true


      t.timestamps
    end
  end
end

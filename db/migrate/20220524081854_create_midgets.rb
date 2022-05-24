class CreateMidgets < ActiveRecord::Migration[6.1]
  def change
    create_table :midgets do |t|
      t.string :name
      t.string :speciality
      t.integer :price
      t.string :description
      t.string :city


      t.timestamps
    end
  end
end

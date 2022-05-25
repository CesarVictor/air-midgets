class AddCoordinatesToMidgets < ActiveRecord::Migration[6.1]
  def change
    add_column :midgets, :latitude, :float
    add_column :midgets, :longitude, :float
  end
end

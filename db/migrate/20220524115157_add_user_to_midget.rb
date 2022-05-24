class AddUserToMidget < ActiveRecord::Migration[6.1]
  def change
    add_reference :midgets, :user, foreign_key: true
  end
end

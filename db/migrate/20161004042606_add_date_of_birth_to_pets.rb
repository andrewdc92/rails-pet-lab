class AddDateOfBirthToPets < ActiveRecord::Migration[5.0]
  def change
    add_column :pets, :date_of_birth, :date
  end
end

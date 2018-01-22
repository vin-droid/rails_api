class CreateAddresses < ActiveRecord::Migration[5.1]
  def change
    create_table :addresses do |t|
      t.string :address_line_1
      t.string :address_line_2
      t.string :city
      t.string :country
      t.integer :picode

      t.timestamps
    end
  end
end

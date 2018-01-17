class CreateUsers < ActiveRecord::Migration[5.1]
  def change
    create_table :users do |t|
      t.string :username
      t.text :status
      t.integer :age
      t.string :city
      t.string :avatar_url

      t.timestamps
    end
  end
end

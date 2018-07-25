class CreatePlayers < ActiveRecord::Migration[5.1]
  def change
    create_table :players do |t|
      t.string :first_name
      t.string :last_name
      t.string :state_name
      t.string :country_name
      t.string :game

      t.timestamps
    end
  end
end

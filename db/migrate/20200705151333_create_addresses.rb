class CreateAddresses < ActiveRecord::Migration[6.0]
  def change
    create_table :addresses do |t|
      t.string :street_number
      t.string :street_name
      t.string :country
      t.string :country_code
      t.string :state_code
      t.string :state
      t.string :door_number
      t.string :zip_code
      t.decimal :lat
      t.decimal :lng

      t.timestamps
    end
  end
end

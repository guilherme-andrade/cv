class CreateJobs < ActiveRecord::Migration[6.0]
  def change
    create_table :jobs do |t|
      t.references :address, null: false, foreign_key: true
      t.string :company_name
      t.string :role
      t.date :start_date
      t.date :end_date

      t.timestamps
    end
  end
end

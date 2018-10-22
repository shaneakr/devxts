class CreateProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.text :goal
      t.text :document
      t.text :test_device
      t.integer :test_age_start
      t.integer :test_age_end
      t.integer :test_income_start
      t.integer :test_income_end
      t.string :test_gender
      t.string :test_country
      t.string :test_specialities
      t.integer :num_testers_start
      t.integer :num_testers_end
      t.date :test_end_date

      t.timestamps
    end
  end
end

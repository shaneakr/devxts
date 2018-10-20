class CreateCompanies < ActiveRecord::Migration[5.1]
  def change
    create_table :companies do |t|
      t.string :name
      t.string :email
      t.string :company
      t.timestamps
      #trail
    end
    add_index :companies, :email, unique: true
  end
end

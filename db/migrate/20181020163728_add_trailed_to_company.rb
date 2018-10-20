class AddTrailedToCompany < ActiveRecord::Migration[5.1]
  def change
    add_column :companies, :trialed, :boolean

  end
end

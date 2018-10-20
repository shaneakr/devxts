class CreateWaitlistedTesters < ActiveRecord::Migration[5.1]
  def change
    create_table :waitlisted_testers do |t|
      t.string :name
      t.string :email
      t.timestamps
    end

    add_index :waitlisted_testers, :email, unique: true
  end
end

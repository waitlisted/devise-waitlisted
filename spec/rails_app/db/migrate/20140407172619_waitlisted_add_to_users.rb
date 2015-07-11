class WaitlistedAddToUsers < ActiveRecord::Migration
  def up
    change_table :users do |t|
      t.string   :waitlisted_id
      t.boolean  :waitlisted_activated
    end

    add_index :users, :waitlisted_activated
    add_index :users, :waitlisted_id, :unique => true
  end

  def down
    remove_column :users, :waitlisted_id
    remove_column :users, :waitlisted_activated
  end
end

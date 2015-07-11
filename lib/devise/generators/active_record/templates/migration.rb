class WaitlistedAddTo<%= table_name.camelize %> < ActiveRecord::Migration
  def up
    change_table :<%= table_name %> do |t|
      t.string   :waitlisted_id
      t.boolean  :waitlisted_activated
    end

    add_index :<%= table_name %>, :waitlisted_activated
    add_index :<%= table_name %>, :waitlisted_id, :unique => true
  end

  def down
    remove_column :<%= table_name %>, :waitlisted_id
    remove_column :<%= table_name %>, :waitlisted_activated
  end
end

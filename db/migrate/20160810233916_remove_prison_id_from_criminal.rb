class RemovePrisonIdFromCriminal < ActiveRecord::Migration[5.0]
  def up
    remove_column :criminals, :prison_id
  end

  def down
    add_reference :criminals, :prison, index: true
  end
end

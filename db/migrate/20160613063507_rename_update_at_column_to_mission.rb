class RenameUpdateAtColumnToMission < ActiveRecord::Migration
  def change
    rename_column :missions, :update_at, :updated_at
  end
end

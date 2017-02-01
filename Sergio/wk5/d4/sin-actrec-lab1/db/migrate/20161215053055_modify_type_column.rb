class ModifyTypeColumn < ActiveRecord::Migration[5.0]
  def change
    rename_column :vehicles, :type, :vehicle_type
  end
end

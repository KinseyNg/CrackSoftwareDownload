class ChangeSftype < ActiveRecord::Migration
  def change
    rename_column :softwares, :type, :software_type
  end
end

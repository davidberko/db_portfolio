class ChangeColumnImage < ActiveRecord::Migration[5.2]
  def change
    rename_column :projects, :image, :images 
  end
end

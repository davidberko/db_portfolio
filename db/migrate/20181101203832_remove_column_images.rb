class RemoveColumnImages < ActiveRecord::Migration[5.2]
  def change
    remove_column :projects, :images 
  end
end

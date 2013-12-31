class ChangingQuantityName < ActiveRecord::Migration
  def change
    rename_column :inventories, :quanity, :quantity
  end
end

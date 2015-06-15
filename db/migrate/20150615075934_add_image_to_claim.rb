class AddImageToClaim < ActiveRecord::Migration
  def change
    add_column :claims, :picture, :string
  end
end

class AddStateToClaims < ActiveRecord::Migration
  def change
      add_column :claims, :state, :integer
  end
end

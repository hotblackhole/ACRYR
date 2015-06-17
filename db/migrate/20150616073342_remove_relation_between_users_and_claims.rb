class RemoveRelationBetweenUsersAndClaims < ActiveRecord::Migration
  def change
      remove_column :claims, :user_id
  end
end

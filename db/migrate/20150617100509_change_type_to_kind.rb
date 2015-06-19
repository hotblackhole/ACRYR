class ChangeTypeToKind < ActiveRecord::Migration
  def change
    rename_column :reviews, :type, :kind
  end
end

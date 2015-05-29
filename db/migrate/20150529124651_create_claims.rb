class CreateClaims < ActiveRecord::Migration
  def change
    create_table :claims do |t|
      t.string :title
      t.text :description
      t.string :client_picture_evidence_url
      t.integer :user_id

      t.timestamps null: false
    end
  end
end

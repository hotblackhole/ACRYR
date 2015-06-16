class CreateParticipations < ActiveRecord::Migration
  def change
    create_table :participations do |t|
      t.integer :user_id
      t.integer :claim_id
      t.boolean :author

      t.timestamps null: false
    end
  end
end

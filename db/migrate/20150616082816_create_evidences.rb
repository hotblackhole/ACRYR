class CreateEvidences < ActiveRecord::Migration
  def change
    create_table :evidences do |t|
      t.string :picture
      t.references :claim, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

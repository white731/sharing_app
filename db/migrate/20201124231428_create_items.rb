class CreateItems < ActiveRecord::Migration[6.0]
  def change
    create_table :items do |t|
      t.string :name
      t.float :price
      t.string :condition
      t.text :description
      t.string :avatar
      t.belongs_to :giver, null: false, foreign_key: true

      t.timestamps
    end
  end
end

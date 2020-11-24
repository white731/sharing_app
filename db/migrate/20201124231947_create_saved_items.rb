class CreateSavedItems < ActiveRecord::Migration[6.0]
  def change
    create_table :saved_items do |t|
      t.float :total
      t.belongs_to :taker, null: false, foreign_key: true

      t.timestamps
    end
  end
end

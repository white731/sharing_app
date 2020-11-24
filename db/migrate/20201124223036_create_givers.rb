class CreateGivers < ActiveRecord::Migration[6.0]
  def change
    create_table :givers do |t|
      t.string :ss_num
      t.string :licence_num
      t.string :street_address
      t.belongs_to :taker, null: false, foreign_key: true

      t.timestamps
    end
  end
end

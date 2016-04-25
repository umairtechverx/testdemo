class CreatePvarients < ActiveRecord::Migration
  def change
    create_table :pvarients do |t|
      t.string :colour
      t.string :size
      t.string :warrenty
      t.string :style
      t.string :image
      t.references :product, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

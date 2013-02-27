class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :name
      t.string :logo
      t.text :description
      t.text :address
      t.text :phone
      t.text :horary
      t.text :promo
      t.string :image1
      t.string :image2

      t.timestamps
    end
  end
end

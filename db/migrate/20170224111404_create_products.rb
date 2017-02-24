class CreateProducts < ActiveRecord::Migration[5.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.string :author
      t.string :image
      t.integer :quantity, default: true
      t.integer :price

      t.timestamps
    end
  end
end

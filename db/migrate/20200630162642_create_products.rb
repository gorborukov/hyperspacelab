class CreateProducts < ActiveRecord::Migration[6.0]
  def change
    create_table :products do |t|
      t.string :title
      t.string :note
      t.float :price
      t.string :slug
      t.string :sku
      t.boolean :available
      t.boolean :preorder

      t.timestamps
    end
  end
end

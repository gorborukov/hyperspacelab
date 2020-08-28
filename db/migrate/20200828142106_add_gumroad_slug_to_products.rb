class AddGumroadSlugToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :gumroad_slug, :string
  end
end

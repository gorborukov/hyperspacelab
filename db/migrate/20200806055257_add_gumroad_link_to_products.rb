class AddGumroadLinkToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :gumroad_link, :string
  end
end

class AddDemoLinksToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :demo_link_mac, :string
    add_column :products, :demo_link_win, :string
  end
end

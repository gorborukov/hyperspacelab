class AddManualLinkToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :manual_link, :string
  end
end

class AddTechInfoToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :tech_info, :string
  end
end

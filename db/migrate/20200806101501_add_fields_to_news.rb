class AddFieldsToNews < ActiveRecord::Migration[6.0]
  def change
    add_column :news, :title, :string
    add_column :news, :slug, :string
  end
end

class AddFieldsToPublications < ActiveRecord::Migration[6.0]
  def change
    add_column :publications, :title, :string
    add_column :publications, :slug, :string
  end
end

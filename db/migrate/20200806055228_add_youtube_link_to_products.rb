class AddYoutubeLinkToProducts < ActiveRecord::Migration[6.0]
  def change
    add_column :products, :youtube_link, :string
  end
end

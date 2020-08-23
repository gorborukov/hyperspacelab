class Publication < ApplicationRecord
  has_one_attached :main
  has_rich_text :content
end

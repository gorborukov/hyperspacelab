class Product < ApplicationRecord
  has_one_attached :main # image of product (screenshot)
  has_one_attached :background # product background image
  has_one_attached :preview # products list preview
  has_rich_text :content
  has_rich_text :tech_info
end

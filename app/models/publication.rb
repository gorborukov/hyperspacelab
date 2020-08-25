class Publication < ApplicationRecord
  extend FriendlyId
  friendly_id :slug
  has_one_attached :main
  has_rich_text :content
end

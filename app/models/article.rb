class Article < ApplicationRecord
  acts_as_taggable_on
  has_rich_text :content
  has_one_attached :banner
end

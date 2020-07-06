class Project < ApplicationRecord
  include Slugged

  acts_as_taggable
  has_one_attached :card_cover
  has_rich_text :content

  enum status: { 'Down': 0, 'Live': 1 }
end

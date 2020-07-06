class Job < ApplicationRecord
  include Slugged

  belongs_to :address
  acts_as_taggable_on :skills
  has_rich_text :description
end

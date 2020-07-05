class Project < ApplicationRecord
  has_rich_text :description
  acts_as_taggable_on :skills
end

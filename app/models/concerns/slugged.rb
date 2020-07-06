module Slugged
  extend ActiveSupport::Concern

  included do
    before_validation :set_slug

    def set_slug
      self.slug = slug_attribute
    end

    def slug_attribute
      company_name.dasherize
    end

    def to_param
      slug
    end
  end
end

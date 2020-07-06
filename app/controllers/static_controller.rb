class StaticController < ApplicationController
  def home
    render layout: 'paged'
  end

  def contact; end
end

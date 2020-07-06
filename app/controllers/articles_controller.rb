class ArticlesController < ApplicationController
  before_action :find_article, except: %i[index new create]

  def index
    @articles = Article.all
  end

  def show; end

  private

  def find_article
    @article = Article.find(params[:id])
  end
end


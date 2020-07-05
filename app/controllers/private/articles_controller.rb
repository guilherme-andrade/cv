class Private::ArticlesController < Private::BaseController
  before_action :set_article, only: %i[update edit destroy]

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(params[:article])
    if @article.save
      flash[:success] = "Article successfully created"
      redirect_to [:private, @article]
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit; end

  def update
    if @article.update(params[:article])
      flash[:success] = "Article was successfully updated"
      redirect_to [:private, @article]
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @article.destroy
      flash[:success] = 'Article was successfully deleted.'
      redirect_to [:private, articles_url]
    else
      flash[:error] = 'Something went wrong'
      redirect_to [:private, articles_url]
    end
  end

  private

  def set_article
    @article = Article.find(params[:id])
  end
end

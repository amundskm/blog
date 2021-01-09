class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new
    end
  end

  def update
    @article = Article.find(param[:id])

    if @article.update(aritcle_params)
      redirect_to @article
    else
      render :edit
    end
  end

  def edit
    @article = Article.find(param[:id])
  end

  def destroy
    @article = Article.find(param[:id])
    @article.destroy
  end

  private
    def article_params
      params.require(:article).permit(:title, :body)
    end
end

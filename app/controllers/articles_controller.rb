class ArticlesController < ApplicationController
  before_action :find_article, :only => [:show]
  before_action :article_params, :only => [:create]
  def index
    @articles = Article.all
  end

  def new
  end
  
  def create
    @article = Article.new(article_params)
    @article.save!

    redirect_to zine_index_path
  end

  def show
    @total = Article.count
  end


  private

  def find_article
    @article = Article.find(params[:id])
  end

  def article_params
    params.permit(:title, :image, :content, :author_id)
  end
end

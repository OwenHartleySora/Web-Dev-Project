class ArticlesController < ApplicationController

  #Limits access to create, edit, and delete articles
  http_basic_authenticate_with name: "dhh", password: "secret", except: [:index, :show]

  def index
    @articles = Article.all
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new
  end

  #Defines the term "create" for use in html docs that hold the content of each article
  def create
    @article = Article.new(article_params)

    if @article.save
      redirect_to @article
    else
      render :new, status: :unprocessable_entity
    end
  end

  #Defines the term "edit" for use in html docs that hold the content of each article
  def edit
    @article = Article.find(params[:id])
  end
  
  #Defines the term "update" for use in html docs that hold the content of each article
  def update
    @article = Article.find(params[:id])
  
    if @article.update(article_params)
      redirect_to @article
    else
      render :edit, status: :unprocessable_entity
    end
  end

  #Laser beam apocalypse
  def destroy
    @article = Article.find(params[:id])
    @article.destroy
  
    redirect_to root_path, status: :see_other
  end

  #Limits new article creation to minimum have a title and 10 characters of body text
  private
  def article_params
    params.require(:article).permit(:title, :body, :thumbnail, :video_id, :debug)
  end

  #Requires something related to status (chapter 9.3)
  private
  def article_params
    params.require(:article).permit(:title, :body, :thumbnail, :status, :video_id, :debug)
  end

end


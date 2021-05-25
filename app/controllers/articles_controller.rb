class ArticlesController < ApplicationController

  def index
    @articles = Article.all
    @user = current_user
    @all_users = User.all
  end

  def show
    @article = Article.new
  end

  def new
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    @article.user_id = current_user.id


    if @article.save
      redirect_to root_path
    else
      puts @article.errors.full_messages
      render :new
    end
  end

  def edit
    @article = Article.find(params[:id])
  end

  def update
    @article = Article.find(params[:id])
    @article.update(params[:article])
  end

  def destroy
    @article = Article.find(params[:id])
    @article.destroy
    redirect_to root_path, notice: 'article was successfully destroyed.'
  end


  private

  def article_params
    params.require(:article).permit(:title, :content, :publishDate, :isPublic)
  end


end

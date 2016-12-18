class ArticlesController < ApplicationController

  def new
    # Render blank profile details form
    @article = Article.new
  end

  def create
    @article = Article.new(article_params)
    if @article.save
      flash[:success] = "Thank you for your post!"
      redirect_to article_path(id: @article.id)
    else
      flash[:danger] = @contact.errors.full_messages.join(", ")
    end
  end



  def index
  end

  private
    def article_params
      params.require(:article).permit(:title, :category, :description, :message)
    end


end

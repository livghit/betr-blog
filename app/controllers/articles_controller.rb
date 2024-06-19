class ArticlesController < ApplicationController
  def index
    @articles = Article.all
  end

  def show
    if user_signed_in?
      @article = Article.find(params[:id])
    else
      flash[:alert] = "To access this route please log in !"
      redirect_to("/")
    end
  end

end

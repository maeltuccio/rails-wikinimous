class ArticlesController < ApplicationController

  def index
    @articles = Article.all
end
#formulaire
def new
  @article = Article.new()
end
#action
def create
@article = Article.new(article_params)
@article.save
redirect_to articles_path
end
#formulaire
def edit
end
#action
def update
end
#action
def destroy
end
#display id
def show
@article = Article.find(params[:id])
end

private

def article_params
  params.require(:article).permit(:title, :content)
end
end

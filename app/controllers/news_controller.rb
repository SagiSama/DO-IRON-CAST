class NewsController < ApplicationController
  before_action :authenticate_account!
  before_action :target_news, only: %i[edit show update]

  def index
    @newses = News.all
  end

  def new
    @news = News.new
  end

  def create
    @news = News.new(news_params)
    if @news.save
      redirect_to news_path(@news)
    else
      render :new
    end
  end

  def update
    if @news.update(news_params)
      redirect_to news_path(@news)
    else
      render :edit
    end
  end

  def destroy
    News.destroy(params[:id])
    redirect_to news_index_path
  end

  private

  def target_news
    @news = News.find(params[:id])
  end

  def news_params
    params.require(:news).permit(:title, :subject, :status)
  end
end

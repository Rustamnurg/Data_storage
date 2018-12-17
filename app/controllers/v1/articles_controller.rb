module V1
  class ArticlesController < ActionController::API
    def index
      render json: news_items_collection
    end

    private

    def news_items_collection
      NewsItem.where("(title) ILIKE '%#{params[:query]}%'")
    end
  end
end

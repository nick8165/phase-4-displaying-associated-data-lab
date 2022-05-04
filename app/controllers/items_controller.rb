class ItemsController < ApplicationController
    def index
        item = Item.all.order(rating: :desc)
        render json: item, include: :user
    end
end

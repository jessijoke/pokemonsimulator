class StoresController < ApplicationController
    before_action :require_logged_in

    def index
        @items = Item.all
    end

    def show
        @item = Item.find(params[:id])
    end

    def create
        
    end
end

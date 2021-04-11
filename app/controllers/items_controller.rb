class ItemsController < ApplicationController

    before_action :require_logged_in

    def index
        @user = current_user
        @items = @user.items
        @user_items = UserItem.where(:user_id => @user.id)
        @quantities = {}
        @user_items.each do |item|
            @quantities[:"#{item.item_id}"] = item.quantity
        end
    end

   

end

class UserItemsController < ApplicationController
    before_action :require_logged_in

    def create
        item = Item.find(params[:item_id])
        #cost = item.cost * params[:quantity]
        #if current_user.money 
        UserItem.create(:user_id => current_user.id, :item_id => params[:item_id], :quantity => params[:quantity])
        redirect_to items_path
            
        #else
            #flash.now[:messages] = "Oops, you can't afford that"
       # end
    end
end

class StoresController < ApplicationController
    before_action :require_logged_in

    def index
        @items = Item.all
    end

    def show
        @item = Item.find(params[:id])
    end

    def create
        #params item cost variable
        item_cost_params = params[:item_cost].keys[0].to_i
        quantity_params = params[:quantity].to_i
        item_id_params = params[:item_id].keys[0].to_i
        if current_user.money >= (item_cost_params * quantity_params)
            if UserItem.exists?(:user_id => current_user.id, :item_id => item_id_params)
                @record = UserItem.find_by(:user_id => current_user.id, :item_id => item_id_params)
                total = @record.quantity += quantity_params
                money = current_user.money -= (item_cost_params * quantity_params)
                current_user.update(:money => money)
                @record.update(:quantity => total)
                redirect_to items_path
            else
                money = current_user.money -= (item_cost_params * quantity_params)
                current_user.update(:money => money)
                UserItem.create(:user_id => current_user.id, :item_id => item_id_params, :quantity => params[:quantity])
                redirect_to items_path
            end 
        else
            flash.now[:messages] = "Oops, you can't afford that"
            @items = Item.all
            render controller: 'stores', action: 'index'
        end
    end
end

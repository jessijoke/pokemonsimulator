class StoresController < ApplicationController
    before_action :require_logged_in

    def index
        @items = Item.all
    end

    def show
        @item = Item.find(params[:id])
    end

    def create
        if current_user.money >= (params[:item_cost].keys[0].to_i * params[:quantity].to_i)
            if UserItem.exists?(:user_id => current_user.id, :item_id => params[:item_id].keys[0].to_i)
                @record = UserItem.find_by(:user_id => current_user.id, :item_id => params[:item_id].keys[0].to_i)
                total = @record.quantity += params[:quantity].to_i
                money = current_user.money -= (params[:item_cost].keys[0].to_i * params[:quantity].to_i)
                current_user.update(:money => money)
                @record.update(:quantity => total)
                redirect_to items_path
            else
                money = current_user.money -= (params[:item_cost].keys[0].to_i * params[:quantity].to_i)
                current_user.update(:money => money)
                UserItem.create(:user_id => current_user.id, :item_id => params[:item_id].keys[0].to_i, :quantity => params[:quantity])
                redirect_to items_path
            end 
        else
            flash.now[:messages] = "Oops, you can't afford that"
            @items = Item.all
            render controller: 'stores', action: 'index'
        end
    end
end

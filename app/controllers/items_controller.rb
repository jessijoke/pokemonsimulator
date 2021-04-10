class ItemsController < ApplicationController

    before_action :require_logged_in

    def index
        @user = current_user
        @user_items = @user.items
    end

end

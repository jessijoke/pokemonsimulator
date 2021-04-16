class FriendshipsController < ApplicationController
    protect_from_forgery with: :exception

    def create
        @friend = params[:friend_id].keys[0].to_i
        @new_friendships = Friendship.create_reciprocal_for_ids(current_user.id, @friend)
        redirect_to user_path(@friend)
    end

    def destroy
        @friend = params[:friend_id].to_i
        Friendship.destroy_reciprocal_for_ids(current_user.id, params[:friend_id])
        redirect_to user_path(@friend)
    end
end

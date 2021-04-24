class RepliesController < ApplicationController
    def new
        @reply = Reply.new
    end

    def create
        @post = Post.find(params["post_id"])
        @reply = Reply.create(message: params["message"], user_id: current_user.id, post_id: @post.id)
        redirect_to post_path(@post)
    end

    def edit
        
    end

    def update

    end
end

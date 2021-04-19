class RepliesController < ApplicationController
    def new
        @reply = Reply.new
    end

    def create
        @post = Post.find(params["post_id"].keys[0].to_i)
        @reply = Reply.create(message: params["message"], user_id: current_user.id, post_id: @post.id)
        if @reply.user.id != current_user.id
            render post_path(@post)
        end
    end

    def edit
        
    end

    def update

    end
end

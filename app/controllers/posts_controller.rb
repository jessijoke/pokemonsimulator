class PostsController < ApplicationController
    def index
        @posts = Post.first(50).reverse
    end

    def new
        @post = Post.new
    end

    def edit
        @post = Post.find(params[:id])
        if @post.user.id != current_user.id
            redirect_to posts_path
        end
    end

    def update
        @post = Post.find(params[:id])
        if @post.user.id == current_user.id
            @post.update(title: params[:post][:title], message: params[:post][:message])
            redirect_to post_path(@post)
        end
    end

    def show
        @post = Post.find(params[:id])
        @replies = Reply.where(:post_id => params[:id])
    end

    def create
        @post = Post.new(:title => params[:title], :message => params[:message], :user_id => current_user.id)
        if @post.valid?
            @post.save
            redirect_to post_path(@post)
        end
    end

    def destroy
        @post = Post.find(params[:id])
        if @post.user.id == current_user.id
            @post.destroy
            redirect_to posts_path        
        end
    end

    private 

    def pokemon_params
        params.require(:post).permit(*args)
    end
end

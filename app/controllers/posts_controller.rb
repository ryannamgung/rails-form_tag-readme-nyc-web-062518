class PostsController < ApplicationController
  def index
    @posts = Post.all
    render :index
  end

  def new
  end

  def create
    Post.create(title: params[:post][:title], description: params[:post][:description])
    redirect_to posts_path
    #posts_path is the /posts
  end
end

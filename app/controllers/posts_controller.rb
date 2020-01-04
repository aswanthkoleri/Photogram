class PostsController < ApplicationController
  def index
  	@post  = Post.new
  	# @posts = Post.all
  	@posts = Post.paginate(page: params[:page], per_page: 2).order('created_at DESC')
  end
  def create
    @post = Post.create(post_params)
    redirect_to posts_path
  end
  private

  def post_params
    params.require(:post).permit(:image, :caption)
  end
end

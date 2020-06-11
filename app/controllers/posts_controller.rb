class PostsController < ApplicationController
  # before_action :move_to_index, except: [:index, :show]

  def index
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @post = Post.new
  end

  def create
    Post.create(post_params)
    redirect_to action: 'index'
  end

  def destroy
    post = Post.find(params[:id])
    post.destroy
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    post.update(post_params)
    redirect_to action: 'show'
  end

  def show
    @post = Post.find(params[:id])
    @comment = Comment.new
    @comments = @post.comments.includes(:user)
  end

  private
  def post_params
    params.require(:post).permit(:title, :file, :detail).merge(user_id: current_user.id)
  end

  # def move_to_index
  #   redirect_to action: :index unless user_signed_in?
  # end

end

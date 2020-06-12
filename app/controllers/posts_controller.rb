class PostsController < ApplicationController
  before_action :move_to_index, except: [:index, :show]

  def index
    @posts = Post.includes(:user).order("created_at DESC").page(params[:page]).per(5)
  end

  def new
    @post = Post.new
  end

  def create
    post = Post.new(post_params)
    if post.save
      redirect_to root_path, notice: '投稿が完了しました'
    else
      render :new
    end
  end

  def destroy
    post = Post.find(params[:id])
    if post.destroy
      redirect_to root_path, notice: '削除が完了しました'
    else
      render :index
    end
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    post = Post.find(params[:id])
    # if post.update(post_params)
    #   redirect_to action: 'show', notice: '編集が完了しました'
    # else
    #   render :edit #これを実装すると createにバグ発生
    # end
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

  def move_to_index
    redirect_to action: :index, notice: 'ログインが必要です' unless user_signed_in?
  end

end

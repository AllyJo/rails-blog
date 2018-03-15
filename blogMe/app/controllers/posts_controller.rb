class PostsController < ApplicationController

  def index
    @posts = Post.all
  end

  def create
    @post = current_user.created_posts.create(post_params)
    if @post.save
      redirect_to post_path(@post)
    else
      @errors = @post.errors.full_messages
      render 'new'
    end
  end

  def new
    @post = Post.new
  end

  def show
    @post = Post.find(params[:id])
  end

  def edit
    @post = Post.find(params[:id])
  end

  def update
    @post = Post.find(params[:id])
    if @post.creator == current_user
      if @post.update_attributes(post_params)
        flash[:notice] = "Post Updated"
      end
    else
      @errors = @post.errors.full_messages
      flash[:notice] = "Post not updated..."
      render 'edit'
    end
  end

  private
  def post_params
    params.require(:post).permit(:title, :body, :creator_id)
  end



end

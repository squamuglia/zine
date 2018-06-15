class PostsController < ApplicationController
  before_action :find_post, only: [:edit, :update, :show, :delete]

  def welcome
    render :welcome
  end
  
  def index
    @posts = Post.all
  end

  def new
    @post = Post.new
  end

  def show
    find_post
  end

  def create
    @post = Post.create(post_params)
      # if @post.save(post_params)
      #   flash[:notice] = "Successfully created entry"
      #   redirect_to post_path(@post)
      # else
      #   flash[:alert] = "Failed to create entry"
      #   render :new
      # end
      redirect_to post_path(@post)
  end

  def edit
  end

  def update
    if @post.update_attributes(post_params)
      flash[:notice] = "Successfully udpated entry"
      redirect_to post_path(@post)
    else
      flas[:alert] = "Failed to update entry"
      render :edit
    end
  end

    def destroy
      if @post.destroy
        flash[:notice] = "Successfully deleted entry"
        redirect_to posts_path
      else
        flash[:alert] = "Failed to delete post"
      end
    end

    private

    def post_params
      params.require(:post).permit(:title, :body, :user)
    end

    def find_post
      @post = Post.find(params[:id])
    end

end

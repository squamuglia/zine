class UsersController <ApplicationController
    def index
      @users = User.all
    end

    def show
      find_user
    end

    def new


    end

    def edit
      find_user
    end

    def create

    end

    def update
      @post.update_attributes(post_params)
      redirect_to post_path(@post)
    end

    def destroy
      @post.destroy
    end

    private

    def user_params
      params.require(:user).permit(:name, :email, :password)
    end

    def find_user
      @user = User.find(params[:id])
    end
end

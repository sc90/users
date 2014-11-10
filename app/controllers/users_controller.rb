class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
     @users = User.find_by_id(params[:id])
    rescue ActiveRecord::RecordNotFound
    redirect_to users_path, notice:'No user found' 
  end

  def by_name
    @users = User.where(name: params[:name]).first
  end

  def new
    @user = User.new
  end
  
  def create 
    @user = User.new(user_params)
     if @user.save
       
            redirect_to users_path #, notice: 'Thank you for signing up'
            #flash[:success] = "Humble welcome to user!"
     else
       render :new
     end
  end
  
  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
end

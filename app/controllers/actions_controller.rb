class ActionsController < ApplicationController
  def top
    @user = User.new
  end
  
  def create
    @user = User.new(action_params)
    # if @user.name
    #   render :top
    # else
      @user.number = rand(1..99)
      @user.save
      redirect_to action_path(@user.id)
    # end
  end
  
  def show
    @user = User.find(params[:id])
    @users = User.count
  end
  
  def result
    @users = User.all.order(number: :desc)
  end
  
  def destroy
    users = User.all
    users.destroy_all
    redirect_to root_path
  end
  
  private
  
  def action_params
    params.require(:user).permit(:name)
  end
end

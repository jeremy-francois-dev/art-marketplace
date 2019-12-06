class UsersController < ApplicationController
  layout "artist_application", :only => [:edit]
  def index
  end

  def show
    @user = User.find(params[:id])
  end

  def new
  end

  def create
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    puts "*******************************"
    puts params
    @user.update(first_name: params[:first_name], last_name: params[:last_name], username: params[:username])
    @user.contact.update(address: params[:address], description: params[:description], phone: params[:phone])
    flash[:success] = "Your profile have been modified"
    redirect_to edit_user_path(@user.id)
  end

  def destroy
  end
end

class CartsController < ApplicationController
  before_action :authenticate_user!
  before_action :create_cart_for_current_user
  before_action :create_contact_for_current_user
  def index
    
  end

  def show
    @cart = current_user.cart

  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def destroy
  end
end

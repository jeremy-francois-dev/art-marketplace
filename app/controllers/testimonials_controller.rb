class TestimonialsController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  before_action :create_cart_for_current_user
  def index
  end

  def show
  end

  def edit
  end

  def create
  end

  def destroy
  end

  def update
  end

  def delete
  end
end

class Order < ApplicationRecord
  belongs_to :user
  has_many :order_details
  has_many :artworks, through: :order_details
  
  after_create :order_done_send

  def order_done_send
    UserMailer.order_done_email(self).deliver_now
  end
end

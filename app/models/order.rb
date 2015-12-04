class Order < ActiveRecord::Base
  belongs_to :user

  has_many :carted_products
  has_many :products, through: :carted_products

  validates :user, presence: true
  # validates :quantity, numericality: true

end

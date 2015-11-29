class Product < ActiveRecord::Base
  belongs_to :supplier
  has_many :images 
  belongs_to :user
  has_many :orders

  has_many :categorized_products
  has_many :categories, through: :categorized_products

  validates :name, :price, :description, presence: true 

  def sale_message
      if price.to_i < 2
         "Discount Item!"
      else 
         "On Sale!"
      end  
    
  end 

  def tax
    price.to_i * (0.09)
    
  end

  def total
    price.to_i + tax
        
  end


end

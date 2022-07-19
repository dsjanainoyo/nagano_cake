class Item < ApplicationRecord
    has_one_attached :image
    belongs_to:genre
    has_many :order_details
    
    enum is_active:{
        on_sale: true,
        discontinued: false
    }
end

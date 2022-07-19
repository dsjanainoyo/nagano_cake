class OrderDetail < ApplicationRecord
    enum making_status: {
        connot_be_manufactured: 0, 
        waiting_for_production: 1, 
        production: 2, 
        production_complete: 3
        }
        
    belongs_to :orders
    belongs_to :items
end

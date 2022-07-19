class Admin::HomesController < ApplicationController
  def top
      @orders=Order.all
  end
  
  private
  
  def top_params
    params.require(:order,:order_detail).permit(:customer_id,:name,:status,:create_at,:quanity)
  end 
    
end

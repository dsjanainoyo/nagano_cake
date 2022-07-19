class Customer < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  
  has_many :orders
  
enum is_active:{
  validity: true,
  withdrawal: false
}
  
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

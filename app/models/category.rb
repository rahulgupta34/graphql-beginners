class Category < ApplicationRecord
    validates :name, uniqueness: true
    
    has_many :posts, dependent: :destroy
end

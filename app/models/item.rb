class Item < ApplicationRecord
    has_many :comments, dependent: :delete_all
    has_one_attached :image
    
    validates :title,
    presence: true,
    length: { minimum: 3 }
    
    validates :text,
    presence: true,
    length: { minimum: 5 }
    
    validates :date,
    presence: true
end

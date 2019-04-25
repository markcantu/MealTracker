class Item < ApplicationRecord
    has_many :comments, dependent: :delete_all
    has_one_attached :image1
    has_one_attached :image2
    has_one_attached :image3
    
    validates :title1,
    presence: true,
    length: { minimum: 3 }
    
    validates :text1,
    presence: true,
    length: { minimum: 5 }
    
    validates :title2,
    presence: true,
    length: { minimum: 3 }
    
    validates :text2,
    presence: true,
    length: { minimum: 5 }
    
    validates :title3,
    presence: true,
    length: { minimum: 3 }
    
    validates :text3,
    presence: true,
    length: { minimum: 5 }
    
    validates :date,
    presence: true
end

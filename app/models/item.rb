class Item < ApplicationRecord
    has_many :notes
    validates :title,
    presence: true,
    length: { minimum: 3 }
    
    validates :text,
    presence: true,
    length: { minimum: 5 }
end

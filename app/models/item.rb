class Item < ApplicationRecord
    has_many :comments, dependent: :delete_all, dependent: :destroy
    has_one_attached :image1
    has_one_attached :image2
    has_one_attached :image3
end

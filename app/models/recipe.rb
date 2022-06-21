class Recipe < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions 
  belongs_to :genre
  belongs_to :user
  has_one_attached :image

  with_options presence: true do
    validates :title
    validates :text
    validates :image
    validates :material
    validates :genre_id, numericality: { other_than: 1 , message: "can't be blank"}
  end
end

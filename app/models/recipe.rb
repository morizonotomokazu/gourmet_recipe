class Recipe < ApplicationRecord

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :user
  belongs_to :category
  has_one_attached :image
  has_many :comments,dependent: :destroy
  with_options presence: true do
    validates :recipe_name 
    validates :recipe_text
    validates :material
    validates :image
    validates :category_id,numericality: { other_than: 1 }
  end 
end

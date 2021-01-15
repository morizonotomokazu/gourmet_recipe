class User < ApplicationRecord
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :recipes
  has_many :comments
  with_options presence: true do
    validates :nickname,format: { with: /\A[ぁ-んァ-ン一-龥々a-z]/}
    validates :name,format: { with: /\A[ぁ-んァ-ン一-龥々]/}
    validates :password,format: { with: /\A(?=.*?[a-z])(?=.*?[\d])[a-z\d]+\z/i}
  end                 
end

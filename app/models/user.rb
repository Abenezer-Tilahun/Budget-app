class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :groups, foreign_key: 'user_id'
  has_many :entities, foreign_key: 'entity_id'
  has_one_attached :avatar, dependent: :destroy
  validates :name, presence: true, uniqueness: true
end

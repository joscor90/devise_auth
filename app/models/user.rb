class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  validates :name, presence: true
  has_many :stories
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

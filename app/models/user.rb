class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :books, dependent: :destroy
  validates :name, uniqueness: true, length: {minimum:2, maximum:20}
  
  
  def get_profile_image(size)
    unless profile_image.attached?
      file_path = Rails.root.join
end

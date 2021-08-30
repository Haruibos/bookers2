class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :books, dependent: :destroy
  # has_manyの後には、1:Nの関係になるモデル名を複数形で記述する

  has_many :post_images, dependent: :destroy

  validates :name, length: {in: 2..20}, uniqueness: true
  validates :introduction, length: { maximum: 50}
# 長さの下限を50文字に設定→minimum
  # presence: trueは、空欄でないことを確認している
  attachment :profile_image
    
end
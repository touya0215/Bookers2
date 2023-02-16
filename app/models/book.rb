class Book < ApplicationRecord
  belongs_to :user
  
  #titleが存在しているか確認するバリデーション
  validates :title, presence: true
  
  #Opinionが存在しているか確認するバリデーション
  validates :body, presence: true
  
  #最大200文字まで
  validates :body, length: { maximum: 200 }

  
    
end
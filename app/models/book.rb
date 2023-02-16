class Book < ApplicationRecord
  belongs_to :user
  
  #titleが存在しているか確認するバリデーション
  validates :title, presence: true
  
  #Opinionが存在しているか確認するバリデーション
  validates :body, presence: true
    
end
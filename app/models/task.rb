class Task < ApplicationRecord
    
  validates :content, presence: true, length: { maximum: 10 }
  validates :status, presence: true, length: { maximum: 10 }
  # tasksテーブルにusersテーブルを参照するための、user_idという外部キーが前提
  belongs_to :user
end

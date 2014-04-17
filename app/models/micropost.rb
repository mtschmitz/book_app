class Micropost < ActiveRecord::Base
  default_scope -> { order('created_at DESC') }  
  belongs_to :user, dependent: :destroy
  validates :content, presence: true, length: { maximum: 140 }
  validates :user_id, presence: true
end

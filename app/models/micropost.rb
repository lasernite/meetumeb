class Micropost < ActiveRecord::Base
  attr_accessible :title, :content, :community
  belongs_to :user
  has_many :comments, dependent: :destroy
  
  validates :content, presence: true, length: {maximum: 300}
  validates :user_id, presence: true
  
  default_scope order: 'microposts.created_at DESC'
  
  def add_community(city, state)
    self.community = city.to_s + state.to_s
  end
end

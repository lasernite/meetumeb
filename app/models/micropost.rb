class Micropost < ActiveRecord::Base
  attr_accessible :content, :community
  belongs_to :user
  before_save :add_community
  
  validates :content, presence: true, length: {maximum: 300}
  validates :user_id, presence: true
  
  default_scope order: 'microposts.created_at DESC'
  
  def add_community(city, state)
    self.community = city.to_s + state.to_s
  end
end

class Post < ActiveRecord::Base
  validates_presence_of :body, :title
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_permalink :title
  has_captcha
  
  def to_param
    permalink
  end
  
end

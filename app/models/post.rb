class Post < ActiveRecord::Base
  has_captcha
  validates_presence_of :body, :title, :description, :category
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_permalink :title
  
  def to_param
    permalink
  end
  
end

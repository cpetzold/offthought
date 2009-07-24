class User < ActiveRecord::Base
  has_many :posts
  has_many :replies
  acts_as_authentic
  has_permalink :username
  has_captcha
  is_gravtastic!
  
  def to_param
    permalink
  end
  
end

class User < ActiveRecord::Base
  acts_as_authentic
  has_permalink :username
  
  def to_param
    permalink
  end
  
end

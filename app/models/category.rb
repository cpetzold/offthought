class Category < ActiveRecord::Base
  has_many :posts
  has_permalink :title
  
  def to_param
    permalink
  end

end

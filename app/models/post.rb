class Post < ActiveRecord::Base
  has_permalink :title
  
  def to_param
    permalink
  end
  
end

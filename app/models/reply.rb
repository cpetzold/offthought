class Reply < ActiveRecord::Base
  validates_presence_of :body, :title
  belongs_to :post
  belongs_to :user
  
end

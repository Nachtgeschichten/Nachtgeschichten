class Story < ActiveRecord::Base
  attr_accessible :content
  validates :content, length: { minimum: 10, maximum: 4000 }
end

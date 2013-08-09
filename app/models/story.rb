class Story < ActiveRecord::Base
  attr_accessible :content
  validates :content, length: { minimum: 20, maximum: 4000 }
end

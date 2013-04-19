class Post < ActiveRecord::Base
  # attr_accessible :title, :body
  attr_accessible :title, :content
  validates :title, :content, :presence => true #ensure both have something in them
  validates :title, :length => { :minimum => 2 }
  #validates :title, :uniqueness => true
  validates :title, :uniqueness => { :message => "already taken" } #the true is implied
end

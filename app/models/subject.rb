class Subject < ActiveRecord::Base
	
  has_many :pages

  attr_accessible :title, :body, :name, :position, :visible
  
  scope :visible, where(:visible => true)
  scope :search, lambda{|query| where(["name LIKE ?","%#{query}%"])}
  #or
  #scope :search, lambda{|firstName,visible| where(:name => "%#{fistName}%",:visible => "%#{visible}%")}
  	#this is the hash method
end

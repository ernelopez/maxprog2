class Docente < ActiveRecord::Base
  attr_accessible :name, :pass, :user
  
  validates :name,  :presence => true
  validates :pass, :presence => true
  validates :user, :presence => true

  has_many :posts
  has_many :escuelas, :through => :posts
end

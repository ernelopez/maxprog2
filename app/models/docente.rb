class Docente < ActiveRecord::Base
  attr_accessible :name, :pass, :user, :role
  
  validates :name,  :presence => true
  validates :pass, :presence => true
  validates :user, :presence => true
  validates :role, :presence => true

  has_many :posts
  has_many :escuelas, :through => :posts
end

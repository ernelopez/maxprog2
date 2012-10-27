class Post < ActiveRecord::Base
  attr_accessible :autor1, :autor2, :autor3, :autor4, :codigo, :docente_id, :escuela_id, :fecha, :file, :obra, :curso, :comentario

  validates :autor1, :presence => true
  validates :codigo, :presence => true
  validates :docente_id, :presence => true
  validates :escuela_id, :presence => true
  validates :fecha, :presence => true
  validates :obra, :presence => true

  belongs_to :docente, :inverse_of => :posts
  belongs_to :escuela, :inverse_of => :posts
end

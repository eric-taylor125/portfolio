class Provincia < ActiveRecord::Base
  has_many :concursos, through: :provincia_concursos
  has_many :empregos, through: :provincia_empregos
  has_many :usuarios
end

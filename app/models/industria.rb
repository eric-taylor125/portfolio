class Industria < ActiveRecord::Base
  has_many :concursos, through: :industria_concursos
  has_many :empregos, through:  :industria_empregos
  has_many :usuarios, through: :industria_usuarios
end

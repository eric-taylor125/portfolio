class Funcao < ActiveRecord::Base
  has_many :concursos, through: :funcao_concursos
  has_many :empregos, through: :funcao_empregos
  has_many :usuarios, through: :funcao_usuarios
end

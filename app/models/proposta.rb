class Proposta < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :concurso
  belongs_to :estado_proposta
end

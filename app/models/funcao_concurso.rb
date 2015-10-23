class FuncaoConcurso < ActiveRecord::Base
  belongs_to :funcao
  belongs_to :concurso
end

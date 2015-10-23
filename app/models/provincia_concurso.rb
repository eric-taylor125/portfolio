class ProvinciaConcurso < ActiveRecord::Base
  belongs_to :provincia
  belongs_to :concurso
end

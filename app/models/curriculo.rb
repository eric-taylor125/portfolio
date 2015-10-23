class Curriculo < ActiveRecord::Base
  belongs_to :usuario
  belongs_to :emprego
  belongs_to :estado_curriculo
end

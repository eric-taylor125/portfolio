class FuncaoEmprego < ActiveRecord::Base
  belongs_to :funcao
  belongs_to :emprego
end

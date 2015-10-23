class CurriculosEmprego < ActiveRecord::Base
  belongs_to :emprego
  belongs_to :curriculo
end

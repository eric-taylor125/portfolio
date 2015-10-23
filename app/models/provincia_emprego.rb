class ProvinciaEmprego < ActiveRecord::Base
  belongs_to :provincia
  belongs_to :emprego
end

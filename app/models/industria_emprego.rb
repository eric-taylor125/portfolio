class IndustriaEmprego < ActiveRecord::Base
  belongs_to :industria
  belongs_to :emprego
end

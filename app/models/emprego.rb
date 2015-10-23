class Emprego < ActiveRecord::Base
  has_many :curriculos, through: :curriculos_emprego
end

class IndustriaUsuario < ActiveRecord::Base
  belongs_to :industria
  belongs_to :usuario
end

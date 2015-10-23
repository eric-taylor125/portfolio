class FuncaoUsuario < ActiveRecord::Base
  belongs_to :funcao
  belongs_to :usuario
end

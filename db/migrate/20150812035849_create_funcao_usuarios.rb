class CreateFuncaoUsuarios < ActiveRecord::Migration
  def change
    create_table :funcao_usuarios do |t|
      t.integer :id_funcao
      t.integer :id_usuario

      t.timestamps
    end
  end
end

class CreateFuncaoConcursos < ActiveRecord::Migration
  def change
    create_table :funcao_concursos do |t|
      t.integer :id_funcao
      t.integer :id_concurso

      t.timestamps
    end
  end
end

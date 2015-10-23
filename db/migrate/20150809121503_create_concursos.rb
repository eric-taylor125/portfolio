class CreateConcursos < ActiveRecord::Migration
  def change
    create_table :concursos do |t|
      t.string :titulo
      t.string :descricao
      t.decimal :preco_minimo
      t.decimal :preco_maximo
      t.datetime :data_inicio
      t.datetime :data_expiracao
      t.integer :ID_Usuario
      t.integer :ID_Tipo_de_Concurso

      t.timestamps
    end
  end
end

class CreateIndustriaConcursos < ActiveRecord::Migration
  def change
    create_table :industria_concursos do |t|
      t.integer :id_industria
      t.integer :id_concurso

      t.timestamps
    end
  end
end

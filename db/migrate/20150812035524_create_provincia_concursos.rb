class CreateProvinciaConcursos < ActiveRecord::Migration
  def change
    create_table :provincia_concursos do |t|
      t.integer :id_provincia
      t.integer :id_concurso

      t.timestamps
    end
  end
end

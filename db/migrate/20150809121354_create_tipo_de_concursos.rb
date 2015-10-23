class CreateTipoDeConcursos < ActiveRecord::Migration
  def change
    create_table :tipo_de_concursos do |t|
      t.string :nome

      t.timestamps
    end
  end
end

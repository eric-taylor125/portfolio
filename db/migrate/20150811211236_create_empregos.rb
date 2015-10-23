class CreateEmpregos < ActiveRecord::Migration
  def change
    create_table :empregos do |t|
      t.string :titulo
      t.string :descricao
      t.datetime :data_inicio
      t.datetime :data_expiracao
      t.integer :ID_Usuario
      t.integer :ID_Tipo_de_Emprego

      t.timestamps
    end
  end
end

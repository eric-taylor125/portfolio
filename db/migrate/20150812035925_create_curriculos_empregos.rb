class CreateCurriculosEmpregos < ActiveRecord::Migration
  def change
    create_table :curriculos_empregos do |t|
      t.integer :id_emprego
      t.integer :id_curriculo

      t.timestamps
    end
  end
end

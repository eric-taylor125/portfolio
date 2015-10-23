class CreateFuncaoEmpregos < ActiveRecord::Migration
  def change
    create_table :funcao_empregos do |t|
      t.integer :id_funcao
      t.integer :id_emprego

      t.timestamps
    end
  end
end

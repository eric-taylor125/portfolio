class CreateProvinciaEmpregos < ActiveRecord::Migration
  def change
    create_table :provincia_empregos do |t|
      t.integer :id_provincia
      t.integer :id_emprego

      t.timestamps
    end
  end
end

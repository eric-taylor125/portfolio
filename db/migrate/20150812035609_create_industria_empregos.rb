class CreateIndustriaEmpregos < ActiveRecord::Migration
  def change
    create_table :industria_empregos do |t|
      t.integer :id_industria
      t.integer :id_emprego

      t.timestamps
    end
  end
end

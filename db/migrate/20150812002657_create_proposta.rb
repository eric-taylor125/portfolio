class CreateProposta < ActiveRecord::Migration
  def change
    create_table :proposta do |t|
      t.string :descricao
      t.decimal :preco
      t.integer :ID_Usuario
      t.integer :ID_Concurso
      t.integer :ID_Estado_Proposta

      t.timestamps
    end
  end
end

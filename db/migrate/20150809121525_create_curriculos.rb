class CreateCurriculos < ActiveRecord::Migration
  def change
    create_table :curriculos do |t|
      t.string :nome
      t.text :morada
      t.string :telefone
      t.string :email
      t.string :documento_identificacao
      t.string :N_documento_identificacao
      t.string :habilitacoes_literarias
      t.string :Experiencia_Profissional
      t.string :Linguas
      t.integer :ID_Usuario
      t.integer :ID_Concurso
      t.integer :ID_Estado_curriculo

      t.timestamps
    end
  end
end

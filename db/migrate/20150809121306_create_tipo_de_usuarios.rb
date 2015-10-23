class CreateTipoDeUsuarios < ActiveRecord::Migration
  def change
    create_table :tipo_de_usuarios do |t|
      t.string :nome

      t.timestamps
    end
  end
end

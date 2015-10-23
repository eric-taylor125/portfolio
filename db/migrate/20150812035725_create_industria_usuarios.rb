class CreateIndustriaUsuarios < ActiveRecord::Migration
  def change
    create_table :industria_usuarios do |t|
      t.integer :id_industria
      t.integer :id_usuario

      t.timestamps
    end
  end
end

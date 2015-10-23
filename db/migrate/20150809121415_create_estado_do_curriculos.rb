class CreateEstadoDoCurriculos < ActiveRecord::Migration
  def change
    create_table :estado_do_curriculos do |t|
      t.string :nome

      t.timestamps
    end
  end
end

class CreateEstadoProposta < ActiveRecord::Migration
  def change
    create_table :estado_proposta do |t|
      t.string :nome

      t.timestamps
    end
  end
end

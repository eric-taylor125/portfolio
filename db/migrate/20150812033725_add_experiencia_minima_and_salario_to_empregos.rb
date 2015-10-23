class AddExperienciaMinimaAndSalarioToEmpregos < ActiveRecord::Migration
  def change
    add_column :empregos, :experiencia_minima, :integer
    add_column :empregos, :salario, :decimal
  end
end

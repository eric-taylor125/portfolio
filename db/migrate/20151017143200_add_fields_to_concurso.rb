class AddFieldsToConcurso < ActiveRecord::Migration
  def change
    add_column :concursos, :estrutura_proposta, :text
    add_column :concursos, :sumario_executivo, :text
    add_column :concursos, :modelo_fornecimento_servico, :text
    add_column :concursos, :planeamento, :text
    add_column :concursos, :equipa_trabalho, :text
    add_column :concursos, :custos, :text
    add_column :concursos, :validade_propostas, :integer
  end
end

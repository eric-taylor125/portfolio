class AddFieldsToUsuarios < ActiveRecord::Migration
  def change
    add_column :usuarios, :ID_Provincia, :integer
    add_column :usuarios, :bairro, :string
    add_column :usuarios, :nome_responsavel, :string
    add_column :usuarios, :funcao_responsavel, :string
  end
end

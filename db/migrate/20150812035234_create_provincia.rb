class CreateProvincia < ActiveRecord::Migration
  def change
    create_table :provincia do |t|
      t.string :nome

      t.timestamps
    end
  end
end

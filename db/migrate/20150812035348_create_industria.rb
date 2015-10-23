class CreateIndustria < ActiveRecord::Migration
  def change
    create_table :industria do |t|
      t.string :nome

      t.timestamps
    end
  end
end

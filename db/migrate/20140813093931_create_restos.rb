class CreateRestos < ActiveRecord::Migration
  def change

    create_table :restos do |t|
      t.string :name
      t.string :adress
      t.integer :phone
      t.string :category

      t.timestamps
    end
  end
end

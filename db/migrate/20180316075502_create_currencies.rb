class CreateCurrencies < ActiveRecord::Migration[5.1]
  def change
    create_table :currencies do |t|
      t.string :name, limit: 50
      t.string :code, limit: 3
      t.string :symbol, limit: 5

      t.timestamps
    end
  end
end

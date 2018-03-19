class CreateTransactionTypes < ActiveRecord::Migration[5.1]
  def change
    create_table :transaction_types do |t|
      t.string :name, limit: 20

      t.timestamps
    end
  end
end

class CreateTransactions < ActiveRecord::Migration[5.1]
  def change
    create_table :transactions do |t|
      t.string :title, limit: 500
      t.string :description, limit: 2048
      t.float :amount
	  t.belongs_to :transaction_type, index: true
	  t.belongs_to :category, index: true
	  t.belongs_to :wallet, index: true

      t.timestamps
    end

	add_foreign_key :transactions, :transaction_types
	add_foreign_key :transactions, :categories
	add_foreign_key :transactions, :wallets
  end
end

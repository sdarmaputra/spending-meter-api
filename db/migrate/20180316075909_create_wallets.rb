class CreateWallets < ActiveRecord::Migration[5.1]
  def change
    create_table :wallets do |t|
      t.string :name, limit: 255
      t.string :description, limit: 255
	  t.belongs_to :currency, index: true

      t.timestamps
    end

	add_foreign_key :wallets, :currencies
  end
end

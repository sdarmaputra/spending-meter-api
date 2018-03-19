class CreateBudgets < ActiveRecord::Migration[5.1]
  def change
    create_table :budgets do |t|
      t.float :amount
      t.boolean :is_monthly
      t.boolean :is_specific_date
      t.timestamp :start_date
      t.timestamp :end_date
	  t.belongs_to :category, index: true

      t.timestamps
    end

	add_foreign_key :budgets, :categories
  end
end

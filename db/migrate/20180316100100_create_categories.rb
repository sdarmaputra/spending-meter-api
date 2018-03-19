class CreateCategories < ActiveRecord::Migration[5.1]
  def change
    create_table :categories do |t|
      t.string :name, limit: 100
      t.string :description, limit: 255

      t.timestamps
    end
  end
end

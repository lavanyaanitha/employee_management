class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :title
      t.text :body
    

      t.timestamps  null: false
    end
  end
end

class AddCoulumEmployees < ActiveRecord::Migration[5.0]
  def change
    rename_column :employees, :title, :name
    add_column :employees, :age, :integer
    add_column :employees, :designation, :string
    add_column :employees, :gender, :string
  end
end

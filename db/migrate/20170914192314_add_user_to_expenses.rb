class AddUserToExpenses < ActiveRecord::Migration[5.0]
  def change
    add_reference :expenses, :user, index: true
    add_foreign_key :expenses, :users
  end
end

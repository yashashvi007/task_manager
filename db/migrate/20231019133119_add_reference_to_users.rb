class AddReferenceToUsers < ActiveRecord::Migration[7.0]
  def change
    add_reference :tasks , :users, foreign_key: true
  end
end

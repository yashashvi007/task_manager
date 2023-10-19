class AddUserRefToSubTasks < ActiveRecord::Migration[7.0]
  def change
    add_reference :sub_tasks, :user, foreign_key: true 
  end
end

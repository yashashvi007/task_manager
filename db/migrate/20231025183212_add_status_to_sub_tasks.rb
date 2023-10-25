class AddStatusToSubTasks < ActiveRecord::Migration[7.0]
  def change 
    add_column :sub_tasks, :status, :string
  end
end

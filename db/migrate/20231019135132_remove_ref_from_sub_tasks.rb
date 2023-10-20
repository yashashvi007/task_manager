class RemoveRefFromSubTasks < ActiveRecord::Migration[7.0]
  def change
    remove_reference :sub_tasks , :user , foreign_key: true 
  end
end

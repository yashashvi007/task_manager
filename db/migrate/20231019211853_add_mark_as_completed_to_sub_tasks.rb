class AddMarkAsCompletedToSubTasks < ActiveRecord::Migration[7.0]
  def change
    add_column :sub_tasks , :mark_us_as_completed , :string, default: "not_completed"
  end
end

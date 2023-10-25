class CreateJoinTableUserTask < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :tasks do |t|
      # t.index [:user_id, :task_id]
      # t.index [:task_id, :user_id]
    end
  end
end

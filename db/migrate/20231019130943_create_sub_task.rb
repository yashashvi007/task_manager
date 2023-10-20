class CreateSubTask < ActiveRecord::Migration[7.0]
  def change
    create_table :sub_tasks do |t|
      t.string "title"
      t.string "description"
      t.timestamps
    end
  end
end

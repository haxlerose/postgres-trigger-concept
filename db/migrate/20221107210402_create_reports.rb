class CreateReports < ActiveRecord::Migration[7.0]
  def change
    create_table :reports do |t|
      t.string :task_id
      t.string :data
      t.integer :status
      t.belongs_to :new_report
      t.timestamps
    end
  end
end

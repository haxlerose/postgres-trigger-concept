class CreateNewReports < ActiveRecord::Migration[7.0]
  def change
    create_table :new_reports do |t|
      t.string :report_name
      t.timestamps
    end
  end
end

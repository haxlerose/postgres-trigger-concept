class CreateJoinTableUsersNewReports < ActiveRecord::Migration[7.0]
  def change
    create_join_table :users, :new_reports do |t|
      t.index [:user_id, :new_report_id]
      t.index [:new_report_id, :user_id]
    end
  end
end

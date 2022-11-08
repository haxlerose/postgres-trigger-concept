# This migration was auto-generated via `rake db:generate_trigger_migration'.
# While you can edit this file, any changes you make to the definitions here
# will be undone by the next auto-generated trigger migration.

class CreateTriggersReportsInsertOrReportsUpdate < ActiveRecord::Migration[7.0]
  def up
    create_trigger("reports_after_insert_row_tr", :generated => true, :compatibility => 1).
        on("reports").
        after(:insert) do
      "UPDATE new_reports SET status = NEW.status WHERE id = NEW.new_report_id;"
    end

    create_trigger("reports_after_update_of_status_row_tr", :generated => true, :compatibility => 1).
        on("reports").
        after(:update).
        of(:status) do
      "UPDATE new_reports SET status = NEW.status WHERE id = NEW.new_report_id;"
    end
  end

  def down
    drop_trigger("reports_after_insert_row_tr", "reports", :generated => true)

    drop_trigger("reports_after_update_of_status_row_tr", "reports", :generated => true)
  end
end

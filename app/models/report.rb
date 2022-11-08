class Report < ApplicationRecord
  belongs_to :new_report
  has_many :users, through: :new_report

  trigger.after(:insert) do
    'UPDATE new_reports SET status = NEW.status WHERE id = NEW.new_report_id;'
  end

  trigger.after(:update).of(:status) do
    'UPDATE new_reports SET status = NEW.status WHERE id = NEW.new_report_id;'
  end

  enum status: { started: 10, pending: 20, completed: 30, error: 40, retrying: 50 }
end

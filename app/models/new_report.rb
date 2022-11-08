class NewReport < ApplicationRecord
  has_and_belongs_to_many :users
  has_one :report

  enum status: { started: 10, pending: 20, completed: 30, error: 40, retrying: 50 }

  # immitate the API creating a Report record with the following callback
  after_commit -> { Report.create(status: 20, task_id: 'foo', new_report_id: id) }
end

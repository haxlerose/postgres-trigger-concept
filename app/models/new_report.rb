class NewReport < ApplicationRecord
  has_and_belongs_to_many :users
  has_one :report

  enum status: { started: 10, pending: 20, completed: 30, error: 40, retrying: 50 }
end

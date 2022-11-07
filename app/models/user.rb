class User < ApplicationRecord
  has_and_belongs_to_many :new_reports
end

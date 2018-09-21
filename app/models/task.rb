class Task < ApplicationRecord
  validates :action, presence: true
end

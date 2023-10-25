class SubTask < ApplicationRecord
  belongs_to :task
  validates :title, presence: true
  validates :description, presence: true, length: { minimum: 10 }
  VALID_STATUSES = ['completed', 'in-progress', 'paused']
  validates :status, inclusion: { in: VALID_STATUSES }
end

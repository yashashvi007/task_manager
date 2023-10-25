class Task < ApplicationRecord
  validates :title , presence: true , length: {minimum:3}
  validates :description, presence: true , length: {maximum: 50}
  has_and_belongs_to_many :users
  belongs_to :user
  has_many :sub_tasks , dependent: :destroy
  VALID_STATUSES = ['completed', 'in-progress', 'paused']
  validates :status, inclusion: { in: VALID_STATUSES }
end

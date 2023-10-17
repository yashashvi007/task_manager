class Task < ApplicationRecord
  validates :title , presence: true , length: {minimum:3}
  validates :description, presence: true , length: {maximum: 50}
end

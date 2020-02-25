class Todo < ApplicationRecord
  validates :title, :status, :priority, :start_time, :end_time, presence: true
  
  enum priority: {"high": 1, "normal": 2, "low": 3}
  enum status: {"pending": 1, "processing": 2, "done": 3}
end
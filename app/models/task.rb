class Task < ApplicationRecord

  validates :task_name, presence: true, length: { maximum: 15 }
  validates :detail, presence: true, length: { maximum: 200 }

end

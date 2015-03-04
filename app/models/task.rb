class Task < ActiveRecord::Base
  scope :eager,   -> { includes(:user) }
  scope :ordered, -> { order(created_at: :desc) }

  belongs_to :user

  enum outcome: %i(incomplete complete blocked)

  validates :label, presence: true
end

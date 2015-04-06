class Task < ActiveRecord::Base
  scope :eager,   -> { includes(:user) }
  scope :ordered, -> { order(created_at: :desc) }
  scope :for_date, -> datetime {
    where(
      "created_at >= :from AND created_at <= :to",
      from: datetime.beginning_of_day,
      to:   datetime.end_of_day
    )
  }

  belongs_to :user

  enum outcome: %i(incomplete complete blocked)

  validates :label, presence: true
end

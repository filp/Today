class DaysController < ApplicationController
  def index
    @day = Day.today(current_user)

    raise
  end
end

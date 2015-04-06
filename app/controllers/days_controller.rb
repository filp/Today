class DaysController < ApplicationController
  def index
    @today     = Day.today(current_user)
    @yesterday = Day.yesterday(current_user)
  end
end

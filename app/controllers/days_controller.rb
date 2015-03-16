class DaysController < ApplicationController
  def index
    @days = Day.collect(6, current_user)
  end
end

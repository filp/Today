class HomeController < ApplicationController
  before_action :go_to_dashboard, if: :current_user

  def index
  end

private

  def go_to_dashboard
    redirect_to days_path
  end
end

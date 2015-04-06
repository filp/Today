class TasksController < ApplicationController

  def create
    task = current_user.tasks.new(task_params)

    task.save

    redirect_to days_path, flash: { notice: "Created" }
  end

private

  def task_params
    params.require(:task).permit(:label)
  end
end

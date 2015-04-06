module TaskHelper
  def task_class(task)
    "task--#{task.outcome}"
  end
end

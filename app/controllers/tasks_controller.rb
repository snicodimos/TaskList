TASKS = [ { task: "Get laundry", status: "incomplete"},
  { task: "Do CS Fun HW", status: "incomplete"},
  { task: "take dog to vet", status: "complete"}]

class TasksController < ApplicationController
  def index
    @tasks = TASKS
  end

  def show
    task_id = params[:id].to_i
    @task = TASKS[task_id]
    if @task.nil?
      head :not_found
    end
  end
end

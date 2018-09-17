TASKS = [ { task: "Get laundry", status: "incomplete"},
  { task: "Do CS Fun HW", status: "incomplete"},
  { task: "take dog to vet", status: "complete"}]

class TasksController < ApplicationController
  def index
    @tasks = TASKS
  end
end

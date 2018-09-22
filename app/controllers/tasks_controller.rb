class TasksController < ApplicationController
  def index
    @tasks = Task.all.order(:id)
  end

  def show
    @task = Task.find_by(id: params[:id])
    if @task.nil?
      head :not_found
    end
  end

  def new
    @task = Task.new
  end

  def create
    filtered_task_params = task_params()
    @task = Task.new(filtered_task_params)

    if @task.save
      redirect_to tasks_path
    else
      render :new
    end
  end

  def edit
    @task = Task.find_by(id: params[:id])
  end

  def update

    task = Task.find_by(id: params[:id])

    filtered_task_params = task_params()

    if task.update(filtered_task_params)

      redirect_to task_path(task)

    else
      render :edit
    end
  end

  def destroy
    @task = Task.find_by(id: params[:id])
    @task.destroy

    redirect_to tasks_path

  end

  private
  def task_params
    return params.require(:task).permit(
      :action,
      :description,
      :completion_date
    )
  end

end

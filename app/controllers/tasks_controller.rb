class TasksController < ApplicationController
  def index
    @tasks = Task.all.sort {|task| task.created_at }.sort { |task| task.completed? ? 1 : 0 }
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task)
    else
      @errors = @task.errors.full_messages
      render :new
    end
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task)
    else
      @errors = @task.errors.full_messages
      render :edit
    end
  end

  def toggle_complete
    @task = Task.find(params[:id])
    @task.toggle_complete!
    redirect_to tasks_path
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task

  end

  def task_params
    params.require(:task).permit(:title, :details)
  end
end

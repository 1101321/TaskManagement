class TasksController < ApplicationController
  
  def new
    @task = Task.new
  end
  
  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task.id)
    else
      render :new
    end
  end
  
  def index
    @tasks = Task.all
  end
  
  def show
  end
  
  def edit
  end
  
  
  private

  def task_params
    params.require(:task).permit(:task_name, :detail)
  end
  
end

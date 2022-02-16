class TasksController < ApplicationController

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to task_path(@task.id), notice: "タスク「#{@task.task_name}」を登録しました！"
    else
      redirect_to new_task_path, alert: 'タスクを登録出来ませんでした'
    end
  end

  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
  end

  def edit
    @task = Task.find(params[:id])
  end

  def update
    @task = Task.find(params[:id])
    if @task.update(task_params)
      redirect_to task_path(@task.id), notice: "タスク「#{@task.task_name}」を更新しました！"
    else
      redirect_to edit_task_path(@task.id), alert: 'タスクを更新出来ませんでした'
    end
  end

  def destroy
    @task = Task.find(params[:id])
    if @task.destroy
      redirect_to tasks_path, notice: "タスク「#{@task.task_name}」を削除しました！"
    else
      redirect_to tasks_path, alert: 'タスクを削除出来ませんでした'
    end
  end


  private

  def task_params
    params.require(:task).permit(:task_name, :detail)
  end

end

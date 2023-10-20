class SubTasksController < ApplicationController 
  def create
    @task = Task.find(params[:task_id])
    @sub_task = @task.sub_tasks.create(sub_task_params)
    redirect_to task_path(@task)
  end

  def edit
    @sub_task = SubTask.find(params[:id])
   
  end

  private 
  def sub_task_params
    params.require(:sub_task).permit(:title, :description)    
  end
  

end
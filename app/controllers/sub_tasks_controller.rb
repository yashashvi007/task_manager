class SubTasksController < ApplicationController 
  def create
   
    @task = Task.find(params[:task_id])
    @sub_task = @task.sub_tasks.create(sub_task_params)
    redirect_to task_path(@task)
  end

  def edit
    @sub_task = SubTask.find(params[:id])
  end

  def update
    @task = Task.find(params[:task_id])
    @sub_task = SubTask.find(params[:id])
    if @sub_task.update(sub_task_params)
      redirect_to task_path(@task)
    else  
      render :edit , status: :unprocessable_entity
    end 
  end 

  def destroy
    @task = Task.find(params[:task_id])
    @subtask = SubTask.find(params[:id])
    @subtask.destroy  
    redirect_to task_path(@task)
  end
  

  private 
  def sub_task_params
    params.require(:sub_task).permit(:title, :description, :status)    
  end
end
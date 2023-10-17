class TasksController < ApplicationController
  def index
    @tasks = Task.all     
  end

  def new
    @task = Task.new 
  end

  def show
    @task = Task.find(params[:id])    
  end

  def create 
    @task = Task.new(task_params)
    
    if @task.save 
      redirect_to tasks_path
    else 
      render :new, status: :unprocessable_entity
    end 
  end

  def edit
    @task = Task.find(params[:id])
  end    

  #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
  def update
    @task = Task.find(params[:id])

    if @task.update(task_params)
      redirect_to tasks_path
    else  
      render :edit, status: :unprocessable_entity
    end
  end
  
  def destroy
    @task = Task.find(params[:id])
    @task.destroy  
    redirect_to root_path, status: :see_other
  end
  

  private 
  def task_params 
    params.require(:task).permit(:title, :description)
  end
  
  
end

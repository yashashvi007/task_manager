class TasksController < ApplicationController
  def index
    if user_signed_in? 
      if current_user.role == 'admin'
        @tasks = Task.all 
      else 
        user = User.find_by(id: current_user.id)
        @tasks = user.tasks
      end
    end
  end

  def new
    @task = Task.new 
    @users = User.all
  end

  def show
    @task = Task.find(params[:id])    
    @users = User.all
  end

  def create 
    @task = Task.new(task_params)
    @task.user_id = current_user.id
    if @task.save 
      redirect_to tasks_path
    else 
      render :new, status: :unprocessable_entity
    end 
  end

  def edit
    @task = Task.find(params[:id])
  end    
 
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
    params.require(:task).permit(:title, :description, :status)
  end

end

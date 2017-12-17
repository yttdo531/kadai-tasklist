class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def new
    @tasks = Task.new
  end

  def create
    @tasks = Task.new(task_params)
    
    if @tasks.save
      flash[:success] = 'Taskが正常に投稿されました'
      redirect_to @tasks
    else
      flash.now[:danger] = 'Taskが投稿されませんでした'
      render :new
    end
    
    
  end

  def edit
    @tasks = Task.find(params[:id])
  end

  def update
  end

  def destroy
  end

private

#Strong Parameter
def task_params
  params.require(:task).permit(:content)
end


end


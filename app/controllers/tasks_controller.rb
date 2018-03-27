# task controller
class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @tasks = Task.find(params[:id])
  end

  def edit
    # URL: /tasks/1/edit
    # params
    # => { id: '1' }

    @task = Task.find(params[:id])
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end

  # def set_restaurant
  #   @restaurant = Restaurant.find(params[:id])
  # end
end

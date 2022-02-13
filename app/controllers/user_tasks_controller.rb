class UserTasksController < ApplicationController
  def index
    @user_tasks = UserTask.order(:id)
    @points = 0
    @user_tasks.each do |user_task|
      if user_task.complete
        @points += user_task.task.points
      end
    end
  end

  def change_status
    @user_task = UserTask.find(params[:id])
    if @user_task.complete
      @user_task.complete = false
    else
      @user_task.complete = true
    end
    @user_task.save
    redirect_back(fallback_location: root_path)
  end

end

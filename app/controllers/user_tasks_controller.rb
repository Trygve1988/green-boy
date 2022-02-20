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

    respond_to do |format|
      if @user_task.save
        format.turbo_stream do
          render turbo_stream: turbo_stream.update(@user_task,
                                                   partial: "user_tasks/user_task",
                                                   locals: {user_task: @user_task})
        end
      end
    end
  end

end

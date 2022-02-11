class UserTasksController < ApplicationController
  before_action :set_tesk, only: %i[ update ]

  def update
    puts "AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAaa"
    @user_task.complete = true
    @user_task.update
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_task
      @user_task = UserTask.find(params[:id])
    end

end

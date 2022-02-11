class HomeController < ApplicationController
  def index
    @user_tasks = UserTask.all
  end
end

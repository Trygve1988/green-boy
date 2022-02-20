class DailyChallengesController < ApplicationController
  before_action :set_daily_challenge, only: %i[ show ]

  # GET /daily_challenges or /daily_challenges.json
  def index
    @daily_challenges = DailyChallenge.all
  end

  # GET /daily_challenges/1 or /daily_challenges/1.json
  def show
  end

  def change_status
    @daily_task = DailyTask.find(params[:id])
    @daily_challenge = @daily_task.daily_challenge

    if @daily_task.complete
      @daily_task.complete = false
      @daily_challenge.total_score -= @daily_task.task.points
    else
      @daily_task.complete = true
      @daily_challenge.total_score += @daily_task.task.points
    end
    @daily_challenge.save

    respond_to do |format|
      if @daily_task.save
        format.turbo_stream do
          render turbo_stream: [
           turbo_stream.update(@daily_task,
                         partial: "daily_tasks/daily_task",
                         locals: {daily_task: @daily_task}),
            turbo_stream.update('daily_challenge',
                              partial: "daily_challenges/daily_challenge",
                              locals: {daily_challenge: @daily_challenge})
          ]
        end
      end
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_daily_challenge
      @daily_challenge = DailyChallenge.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def daily_challenge_params
      params.require(:daily_challenge).permit(:total_score, :user_id)
    end
end

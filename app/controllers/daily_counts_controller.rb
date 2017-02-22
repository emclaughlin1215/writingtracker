class DailyCountsController < ApplicationController
  def create
    @project = Project.find(params[:project_id])
    @daily_count = @project.daily_counts.create(daily_count_params)
    redirect to project_path(@project)
  end

  def destory
    @project = Project.find([params[:project_id])
    @daily_count = @project.daily_counts.find(params[:id])
    @daily_count.destroy
    redirect_to project_path(@project)
  end

  private
    def daily_count_params
      params.require(:daily_count).permit(:count_date, :count)
    end
end

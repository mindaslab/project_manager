class TasksController < ApplicationController

	def create
    @project = Project.find(params[:project_id])
    @task = @project.tasks.create(params[:task])
    redirect_to project_path(@project)
  end

  def destroy
    @project = Project.find(params[:project_id])
    @task = @project.tasks.find(params[:id])
    @task.destroy
    redirect_to project_path(@project)
  end

end

class ProjectsController < ApplicationController
  before_action :authenticate_user!
  def show
    @user = User.find(params[:user_id])
    @project = @user.projects.find(params[:id])
  end
  def new
    @user = User.find(params[:user_id])
    @project = Project.new
  end
  def create
    @user = User.find(params[:user_id])
    @project = @user.projects.create(project_params)
    redirect_to current_user
  end
  def edit
    @user = User.find(params[:user_id])
    @project = @user.projects.find(params[:id])
  end

  def update
    
  end
  private
    def project_params
      params.require(:project).permit(:title, :description, :medium, {images: []})
    end
end

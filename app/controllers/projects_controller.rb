class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def about
  end

  def show
    @project = Project.find(params[:id])
  end

  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)
    if @project.save
      redirect_to @project
    else
      render 'new'
    end
  end
  def edit
    @project = Project.find(params[:id])
  end
  def update
    if @project = Project.update(project_params)
      redirect_to @project, notice: "successfully updated"
    else render 'edit'
    end
  end
end

private

def project_params
  params.require(:project).permit(:name, :caption, mobile_images: [], desktop_images: [])
end

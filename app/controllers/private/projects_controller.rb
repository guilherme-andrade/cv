class Private::ProjectsController < Private::BaseController
  before_action :find_project, only: %i[update edit destroy]

  def new
    @project = Project.new
  end

  def create
    @project = Project.new(params[:project])
    if @project.save
      flash[:success] = "Project successfully created"
      redirect_to [:private, @project]
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
  end

  def edit; end

  def update
    if @project.update(params[:project])
      flash[:success] = "Project was successfully updated"
      redirect_to [:private, @project]
    else
      flash[:error] = "Something went wrong"
      render 'edit'
    end
  end

  def destroy
    if @project.destroy
      flash[:success] = 'Project was successfully deleted.'
      redirect_to [:private, projects_url]
    else
      flash[:error] = 'Something went wrong'
      redirect_to [:private, projects_url]
    end
  end

  private

  def find_project
    @project = Project.find(params[:id])
  end
end

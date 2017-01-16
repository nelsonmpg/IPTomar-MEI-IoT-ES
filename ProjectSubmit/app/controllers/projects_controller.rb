class ProjectsController < ApplicationController
  #autenticação do user antes de entrar.....
  before_filter :authenticate_user!, :except => [:index,:show]

  before_action :set_project, only: [:show, :edit, :update, :destroy]


  # GET /projects
  # GET /projects.json
  def index
    #projects = Project.all
    if params[:tag]
        @projects = Project.tagged_with(params[:tag]).paginate(:page => params[:page], :per_page => 10)
    else
        @projects = Project.all.paginate(:page => params[:page], :per_page => 10)
    end
  end

  # GET /projects/1
  # GET /projects/1.json
  def show
    @related_projects = Project.tagged_with(@project.tags, :any => true)
  end

  # GET /projects/new
  def new
    @project = Project.new
    @project.build_presentation
    @project.documents.new
    3.times{@project.project_images.new} 
  end

  # GET /projects/1/edit
  def edit
    @project.build_presentation
    @project.documents.new
    3.times{@project.project_images.new} 
  end

  # POST /projects
  # POST /projects.json


  def create
    @project = Project.new(project_params)
    @project.user = current_user

    respond_to do |format|
      if @project.save
        format.html { redirect_to @project, notice: 'Project was successfully created.' }
        format.json { render :show, status: :created, location: @project }
      else
        format.html { render :new }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /projects/1
  # PATCH/PUT /projects/1.json
  def update
      
    respond_to do |format|
      if @project.update(project_params)
        format.html { redirect_to @project, notice: 'Project was successfully updated.' }
        format.json { render :show, status: :ok, location: @project }
      
    else
        format.html { render :edit }
        format.json { render json: @project.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /projects/1
  # DELETE /projects/1.json
  def destroy
    @project.destroy
    respond_to do |format|
      format.html { redirect_to projects_url, notice: 'Project was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_project
      @project = Project.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def project_params

      params.require(:project).permit(:title, :resume, :github, :grade, :project_url, :date, :presentation, :featured, :finished, :course_unit_id, :tag_list, documents_attributes: [:id, :name , :description, :date, :local, :document ], presentation_attributes: [:id, :date , :room, :slides ],project_images_attributes:[:id,:image])

    end
    
end

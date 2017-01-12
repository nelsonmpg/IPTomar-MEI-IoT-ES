class SchoolsController < ApplicationController
  #autenticação do user antes de entrar.....
  before_filter :authenticate_user!, :except => [:index,:show]
def index

    if params[:pesquisar]
    @schools = School.search(params[:pesquisar]).order("name asc")
  else
    @schools = School.all.order('name asc').paginate(:page => params[:page], :per_page => 10)
  end
end

def show
    @school = School.find(params[:id])
    
end

def edit
    @school = School.find(params[:id])
end

def new
    @school = School.new
end

def update
    @school = School.find(params[:id])

  if @school.update(school_params)
    redirect_to school_path @school
  else
    render 'edit'
  end
end

def create
    @school = School.new(school_params)
 if @school.save
  redirect_to schools_path
  else
      render 'new'
end
end

def destroy
    @school = School.find(params[:id])
    @school.destroy
    redirect_to schools_path
end

private
def school_params
    params.require(:school).permit(:description,:name,:code,:initials,:institution_id)
end
end

class SchoolsController < ApplicationController
  #autenticação do user antes de entrar.....
  before_filter :authenticate_user!, :except => [:index,:show]
def index

    if params[:pesquisar]
    @schools = School.search(params[:pesquisar]).order("created_at DESC")
  else
    @schools = School.all.order('created_at DESC')
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
    redirect_to schools_path
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
    params.require(:school).permit(:description,:name,:code,:initials)
end
end

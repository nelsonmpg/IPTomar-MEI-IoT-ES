class PeopleController < ApplicationController
#autenticação do user antes de entrar.....
layout :select_layout
require 'will_paginate/array'
before_filter :authenticate_user!, :except => [:index,:show]

def index
	@people = Person.all
end

def show
	@person = Person.find(params[:id])
end

def edit
	@person = Person.find(params[:id])
end

def new
	@person = Person.new
end

def update
	@person = Person.find(params[:id])

	if @person.update(person_params)
		redirect_to people_path
	else
		render 'edit'
	end
end

def create
	@person = Person.new(person_params)
	@person.photo
	@person.save
	if @person.save
		redirect_to people_path
	else
		render 'new'
	end
end

def destroy
	@person = Person.find(params[:id])
	@person.destroy

	redirect_to people_path
end

private
def person_params
	params.require(:person).permit(:name,:email,:photo,:person_type_id)
end

def select_layout
	case action_name
	when "new", "edit"
		"app_nosidebar"
	else
		"application"
	end
end
end

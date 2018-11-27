class PeopleController < ApplicationController
  before_action :find_person, only: [:show, :edit, :update, :destroy]

  def index
    @people = Person.all
  end

  def new
    @person = Person.new
  end

  def create
    @person = Person.create(people_params)
    redirect_to @person
  end

  def show
    #private method
  end

  def edit
    #private method
  end

  def update
    @person.update(people_params)
    redirect_to @person
  end

  def destroy
    @person.destroy
    redirect_to people_path
  end

  private

  def find_person
    @person = Person.find(params[:id])
  end

  def people_params
    params.require(:person).permit(:name)
  end
end

class RoutesController < ApplicationController
  before_action :find_route, only: [:show, :edit, :update, :destroy]

  def index
    @routes = Route.all
  end

  def new
    @route = Route.new
    @buses = Bus.all
    @people = Person.all
  end

  def create
    @route = Route.create(route_params)
    redirect_to @route
  end

  def show
  end

  def edit
    @buses = Bus.all
    @people = Person.all
  end

  def update
    @route.update(route_params)
    redirect_to @route
  end

  def destroy
    @route.destroy
    redirect_to routes_path
  end

end

private

def find_route
  @route = Route.find(params[:id])
end

def route_params
  params.require(:route).permit(:name, :bus_id, :person_id)
end

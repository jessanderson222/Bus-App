class BusesController < ApplicationController

  before_action :find_bus, only:[:show, :edit, :update, :destroy]

  def index
    @buses = Bus.all
  end

  def new
    @bus = Bus.new
  end

  def create
    @bus = Bus.new(bus_params)

    if @bus.valid?
      @bus.save
      redirect_to @bus
    else
      render :new
    end 
  end

  def show
    #private method covers it
  end

  def edit
    #private method
  end

  def update
    @bus.update(bus_params)
    redirect_to @bus
  end

  def destroy
    @bus.destroy
    redirect_to buses_path
  end

  private
  def find_bus
    @bus = Bus.find(params[:id])
  end

  def bus_params
    params.require(:bus).permit(:name)
  end

end

class OceansController < ApplicationController
  def index
    @oceans = Ocean.all
    render "index.json.jbuilder"
  end

  def show
    @ocean = Ocean.find_by(id: params[:id])
    render "show.json.jbuilder"
  end

  def create
    @ocean = Ocean.new(
      name: params[:name],
      temperature: params[:temperature],
      )
    @ocean.save
    render "show.json.jbuilder"
  end

  def update
    @ocean = Ocean.find_by(id: params[:id])
    @ocean.name = params[:name] || @ocean.name
    @ocean.temperature = params[:temperature] || @ocean.temperature
    @ocean.save
    render "show.json.jbuilder"
  end

  def destroy
    @ocean = Ocean.find_by(id: params[:id])
    @ocean.destroy
    render json: {message: "Ocean dried up"}
  end
end

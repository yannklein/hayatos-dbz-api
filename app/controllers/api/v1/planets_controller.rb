class Api::V1::PlanetsController < Api::V1::BaseController
  before_action :set_planet, only: :show

  def index
    @planets = Planet.all
  end

  def show
    @characters = @planet.characters
  end

  private

  def set_planet
    @planet = Planet.find(params[:id])
  end
end

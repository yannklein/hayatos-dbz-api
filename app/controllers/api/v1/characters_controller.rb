class Api::V1::CharactersController < Api::V1::BaseController
  before_action :set_character, only: :show

  def index
    @characters = Character.all
  end

  def show
    @planet = @character.planet
  end

  private

  def set_character
    @character = Character.find(params[:id])
  end
end

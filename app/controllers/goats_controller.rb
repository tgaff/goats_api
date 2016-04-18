class GoatsController < ApplicationController
  # #reset needs this to access goat seed data
  require 'goat_data'
  include GoatData


  before_action :set_goat, only: [:show, :update, :destroy]

  # GET /goats
  def index
    @goats = Goat.all

    render json: @goats
  end

  # GET /goats/1
  def show
    render json: @goat
  end

  # POST /goats
  def create
    @goat = Goat.new(goat_params)

    if @goat.save
      render json: @goat, status: :created, location: @goat
    else
      render json: @goat.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /goats/1
  def update
    if @goat.update(goat_params)
      render json: @goat
    else
      render json: @goat.errors, status: :unprocessable_entity
    end
  end

  # DELETE /goats/1
  def destroy
    @goat.destroy
  end

  def reset
    reset_goats
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_goat
      @goat = Goat.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def goat_params
      puts "params="
      puts params
      #params.require(:goat).permit(:name, :age, :charisma, :latitude, :longitude, :color, :birthdate)
      params.permit(:name, :age, :charisma, :latitude, :longitude, :color, :birthdate, :image_url)
    end
end

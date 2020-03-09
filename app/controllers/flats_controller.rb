require "open-uri"

class FlatsController < ApplicationController
  # EXECUTE THE SET_FLATS LETHODS BEFORE EVERY ACTION (here index and show)
  before_action :set_flats, only: [:index, :show]

  def index
  end

  def show
    @flat = @flats.find { |flat| flat['id'] == params[:id].to_i}
  end

  private
  # PRIVATE METHODS ARE ONLY USED IN OUR FILE HERE IN FLATS CONTROLLER

  def set_flats
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"
    @flats = JSON.parse(open(url).read)
  end
end

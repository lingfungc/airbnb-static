require "json"
require "open-uri"

class FlatsController < ApplicationController
  def index
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

    serialised = URI.open(url).read
    @flats = JSON.parse(serialised)
  end

  def show
    url = "https://raw.githubusercontent.com/lewagon/flats-boilerplate/master/flats.json"

    serialised = URI.open(url).read
    flats = JSON.parse(serialised)

    @flat = flats.find { |flat| flat["id"] == params[:id].to_i }
    # raise
  end
end

class Bands::PerformancesController < ApplicationController
  def index
    @bands = Band.all
  end
end

class Clowns::PerformancesController < ApplicationController
  def index
    @clowns = Clown.all
  end
end

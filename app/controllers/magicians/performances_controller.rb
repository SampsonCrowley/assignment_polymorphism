class Magicians::PerformancesController < ApplicationController
  def index
    @magicians = Magician.all
  end
end

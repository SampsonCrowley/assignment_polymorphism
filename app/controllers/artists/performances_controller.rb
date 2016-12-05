class Artists::PerformancesController < ApplicationController
  def index
    @artists = Artist.all
  end
end

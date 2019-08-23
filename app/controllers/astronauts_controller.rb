class AstronautsController < ApplicationController

  def index
    @astronauts = Astronaut.all
  end

  # def missions
  #   @astronauts = Astronaut.all
  # end

end

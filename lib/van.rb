require_relative 'docking_station'

class Van

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def get_bikes_from(place)
    if place.class != Garage
      place.release_bikes.each { |bike| bikes << bike }
    else
      # code for getting working bikes if place.class == DockingStation
    end
  end

  def give_bikes_to(garage)
    bikes.each { |bike| garage.bikes << bike }
    @bikes = []
  end

end


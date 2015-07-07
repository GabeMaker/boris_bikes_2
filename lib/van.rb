require_relative 'docking_station'

class Van

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def get_bikes_from(station)
    bikes << station.release_broken_bikes
  end

  def give_bikes_to(garage)
    bikes.each { |bike| garage.bikes << bike }
    @bikes = []
  end

end
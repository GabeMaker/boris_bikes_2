require_relative 'docking_station'

class Van

  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def get_bikes_from(place)
    place.release_bikes.each { |bike| bikes << bike }
  end

  def give_bikes_to(place)
    bikes.each { |bike| place.bikes << bike }
    @bikes = []
  end

end

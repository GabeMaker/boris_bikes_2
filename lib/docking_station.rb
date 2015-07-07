require_relative 'bike'

class DockingStation
  DEFAULT_CAPACITY = 20

  attr_reader :capacity

  def initialize
    @capacity = DEFAULT_CAPACITY
    @bikes = []
  end

  def release_bike
    fail 'No bikes available.' if empty?
    bikes.pop
  end

  def dock bike
    fail 'Docking station full' if full?
    bikes << bike
  end

  private

  attr_reader :bikes

  def empty?
    bikes.empty?
  end

  def full?
    bikes.length >= capacity
  end
end

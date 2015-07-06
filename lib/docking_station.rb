require_relative 'bike'

class DockingStation
  def release_bike
    fail 'No bikes available.' if @bike.nil?
    @bike
  end

  def dock bike
    fail 'Docking station full' if @bike
    @bike = bike
  end
end

require './lib/bike'

class DockingStation
  attr_reader :bikes

  def initialize
    @bikes = []
  end

  def release_bike
    fail "There are no bikes in this docking station." if @bikes.empty?
    @bikes.pop
  end

  def dock_bike(bike)
    fail "The docking station is full." if @bikes.length > 0 
    @bikes << bike
  end
end

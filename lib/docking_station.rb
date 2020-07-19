require './lib/bike'

class DockingStation

  attr_reader :bikes, :capacity

  def initialize(capacity = 20)
    @bikes = []
    @capacity = capacity
  end

  def release_bike
   
    i = 0
    @bikes.each do |bike_instance|
      i += 1

      next if bike_instance.working == false
      if bike_instance.working == true
        @bikes.drop(i)
      end 
    end 
    empty?
    
    
  end 
  
  def report_fault(bike)
    bike.working = false
  end 

  def dock_bike(bike)
      @bikes << bike unless full?
  end

  private

  def full?
    fail "The docking station is full." if @bikes.length >= @capacity
  end 

  def empty?
    fail "There are no bikes in this docking station." if @bikes.empty?
  end 
end
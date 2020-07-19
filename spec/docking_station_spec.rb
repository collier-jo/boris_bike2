require 'docking_station'

describe DockingStation do
  it 'release bike from docking station' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  #it 'Return true to bike.working?' do
  #  expect(Bike.new.working?).to eq (true)
  #end

  it "return bike to a full docking station" do
    docking = DockingStation.new
    docking.capacity.times {docking.dock_bike(Bike.new)}
    #@bikes = [Bike.new]  
    expect{docking.dock_bike(Bike.new)}.to raise_error("The docking station is full.")
    puts 
  end

  it 'Return bike to docking station' do
    expect(DockingStation.new).to respond_to(:dock_bike)
  end
  
  it { is_expected.to respond_to :bikes }

  it "Get a bike from empty station" do
    @bikes = []
    expect {DockingStation.new.release_bike}.to raise_error("There are no bikes in this docking station.")
  end 

=begin
  it "(release bike) Get working bike from station" do
    docking = DockingStation.new
    bike = Bike.new
    docking.dock_bike(bike)
    expect(docking.release_bike).to eq (bike)
  end 
=end 

  it "doesn't release a broken bike" do
    docking = DockingStation.new
    bike1 = Bike.new
    docking.report_fault(bike1)
    docking.dock_bike(bike1)
    expect(docking.release_bike).to eq (nil)
  end


  it "Requires a user to report if bike is broken" do
    expect(DockingStation.new).to respond_to(:report_fault)
  end

  it 'User can report broken bike' do
    dock = DockingStation.new
    bike = Bike.new
    dock.report_fault(bike)
    expect(bike.working).to eq(false)
  end 

  it "only release working bikes" do
    docking = DockingStation.new
    bike = Bike.new
    docking.dock_bike(bike)
    bike1 = Bike.new
    docking.dock_bike(bike1)
    docking.report_fault(bike1)
    expect(docking.release_bike).to eq (bike)
  end 
 



end
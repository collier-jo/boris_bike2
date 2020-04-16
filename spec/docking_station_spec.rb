require 'docking_station'

describe DockingStation do
  it 'release bike from docking station' do
    expect(DockingStation.new).to respond_to(:release_bike)
  end

  it 'Get a bike' do
    expect((DockingStation.new.release_bike).class).to eq (Bike)
  end

  it 'Return true to bike.working?' do
    expect((DockingStation.new.release_bike).working?).to eq (true)
  end

  it 'Return bike to docking station' do
    expect(DockingStation.new).to respond_to(:dock_bike)
  end

  it "attr_reader" do
    expect(DockingStation.new).to respond_to(:bikes)
  end
  #it { is_expected.to respond_to :bikes }
end

require "dockingstation"
require "bike"
DEFAULT_CAPACITY = 20

# describe DockingStation do
#   it "DockingStation instances to respond_to the method release_bike" do
#     docking_station = DockingStation.new
#     expect(docking_station).to respond_to(:release_bike)
#   end
# end

# one-liner syntax
describe DockingStation do
  it { is_expected.to respond_to :release_bike }

  it "bicycle can be docked" do
    bike1 = Bike.new
    subject.dock(bike1)
    expect(subject.docker).to eq([bike1])
  end

  it "raises an error when there are no bikes available" do
    expect { subject.release_bike }.to raise_error("Error")
  end

  it "raises an error when there are more than 1 bikes at dock" do
    DEFAULT_CAPACITY.times { subject.dock Bike.new }
    expect { subject.dock Bike.new }.to raise_error("Capacity full")
  end

  it "accepts capacity different than 20" do
    docking_station = DockingStation.new(30)
    expect(docking_station.capacity).to eq(30)
  end
end

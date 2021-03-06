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
    bike1 = double(:bike)
    subject.dock(bike1)
    expect(subject.docker).to eq([bike1])
  end

  it "raises an error when there are no bikes available" do
    expect { subject.release_bike }.to raise_error("Error")
  end

  it "raises an error when there are more than 1 bikes at dock" do
    DEFAULT_CAPACITY.times { subject.dock double(:bike) }
    expect { subject.dock double(:bike) }.to raise_error("Capacity full")
  end

  it "accepts capacity different than 20" do
    docking_station = DockingStation.new(30)
    expect(docking_station.capacity).to eq(30)
  end

  it "doesn't release broken bikes" do
    bike = double(:bike)
    allow(bike).to receive(:working?).and_return(false)
    # bike.report("broken")
    subject.dock(bike)
    expect(subject.release_bike).to eq("cannot release broken bike")
  end
end

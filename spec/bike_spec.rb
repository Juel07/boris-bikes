require "./lib/bike"

describe Bike do
  it "checks Bike" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end
end

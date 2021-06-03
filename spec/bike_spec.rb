require "./lib/bike"

describe Bike do
  it "checks Bike" do
    bike = Bike.new
    expect(bike).to respond_to(:working?)
  end

  it "can be changed to broken status" do
    subject.report("broken")
    expect(subject.working?).to eq(false)
  end
end

class DockingStation
  attr_reader :bike, :docker

  def initialize(capacity = 20)
    @docker = []
    @capacity = capacity
  end

  def release_bike
    if empty?
      raise "Error"
    else
      return "cannot release broken bike" if !@docker[0].working?
    end
  end

  def dock(bike)
    full? ? (@docker << bike) : (raise "Capacity full")
  end

  def capacity
    @capacity
  end

  private

  def full?
    @docker.length < @capacity
  end

  def empty?
    @docker.empty?
  end
end

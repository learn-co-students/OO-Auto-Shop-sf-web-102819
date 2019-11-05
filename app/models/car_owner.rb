class CarOwner

  attr_reader :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def cars
    Car.all.select {|car| car.owner == self}
  end

  def mechanics
    cars.map {|car| car.mechanic}
  end

  def self.average_cars
    total_cars = Car.all.length
    total_owners = self.all.length
    average = total_cars.to_f / total_owners.to_f
  end

end

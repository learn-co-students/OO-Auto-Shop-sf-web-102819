class Mechanic

  attr_reader :name, :specialty

  @@all = []

def initialize(name, specialty)
  @name = name
  @specialty = specialty
  @@all << self
end

def self.all
  @@all
end

def cars_serviced
  Car.all.select {|car| car.mechanic == self}
end

def cars_owners
  cars_serviced.map {|car| car.owner}
end

def cars_owners_names
  cars_serviced.map {|car| car.owner.name}
end

end

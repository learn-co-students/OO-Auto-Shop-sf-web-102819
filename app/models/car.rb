class Car

  attr_reader :make, :model
  attr_accessor :classification, :owner, :mechanic

  @@all = []

  def initialize(make, model, classification, owner, mechanic)
    @make = make
    @model = model
    @classification = classification
    @owner = owner
    @mechanic = mechanic
    @@all << self
  end

  def self.all
    @@all
  end

  def self.car_classifications
    classifications.map {|car| car.classification}.uniq!
  end

  def classifications
    Car.all.select {|car| car.classification}
  end

  def specificiations
    classify = classifications.select {|car| car.classification == self.classification}
    classify.map {|car| car.mechanic}
  end



end

require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

megan = CarOwner.new("Megan")
allan = CarOwner.new("Allan")
tom = CarOwner.new("Tom")
connie = CarOwner.new("Connie")
jt = CarOwner.new("Jonathan")

d_and_j = Mechanic.new("DJ", "Japanese")
peter_pan = Mechanic.new("Dudes", "German")
serramonte = Mechanic.new("Serramonte", "Sports")

brz =  Car.new("Subaru", "BRZ", "Sports", megan, serramonte)
wc = Car.new("BMW", "420i", "German", allan, peter_pan)
oldie = Car.new("BMW", "328i", "German", connie, peter_pan)
element = Car.new("Honda", "Element", "Japanese", jt, d_and_j)

binding.pry
"cars r cool"
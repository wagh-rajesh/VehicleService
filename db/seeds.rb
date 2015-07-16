# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


require 'faker'
include Faker

# Making dummy entries for tables

100.times do
  VehicleDetail.create( :vehicle_number => "#{(0..1).map{65.+(rand(26)).chr}.join + "-" + rand(01..50).to_s + " " + rand(1000...9999).to_s}",
                    :owner => "#{Name.name}")
end

100.times do
  PlaceDetail.create( :name => "#{Address.street_name}, #{Address.city}",
                      :distance => rand(1...40))
end
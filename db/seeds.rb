# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


#create drift messages
10.times do
    Drift.create!(
        title: Faker::HarryPotter.character,
        body: Faker::HarryPotter.quote,
        created_at: "2017-11-29  10:31:00"
    )
end

puts "Seed finished"
puts "#{Drift.count} drift messages created!"
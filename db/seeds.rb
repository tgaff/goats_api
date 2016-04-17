# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
#


goat_list = [
  {name: 'Jorge',
   charisma: 3,
   latitude: 30.703639,
   longitude: -9.861236,
   color: 'grey',
   birthdate: 300.days.ago
  },
  {name: 'Maude',
   charisma: 4,
   latitude: 30.703641,
   longitude: -9.861238,
   color: 'mauve',
   birthdate: 200.days.ago
  },
  {name: 'Methuselah',
   charisma: 4,
   latitude: 30.69585,
   longitude: -9.871111,
   color: 'grey',
   birthdate: 3000.days.ago
  },
  {name: 'Claudia',
   charisma: 8,
   latitude: 30.695,
   longitude: -9.87,
   color: 'grey',
   birthdate: 30.days.ago
  },
]

goat_list.each do |goat|
  Goat.create goat
end

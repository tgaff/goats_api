# moved seed data here, we'll use it from the controller's reset route

module GoatData
  GOAT_LIST = [
    {name: 'Jorge',
     charisma: 3,
     latitude: 30.703639,
     longitude: -9.861236,
     color: 'grey',
     birthdate: 300.days.ago,
     image_url: 'http://www.publicdomainpictures.net/pictures/50000/nahled/white-goat.jpg'
    },
    {name: 'Maude',
     charisma: 4,
     latitude: 30.703641,
     longitude: -9.861238,
     color: 'mauve',
     birthdate: 200.days.ago,
     image_url: 'https://upload.wikimedia.org/wikipedia/commons/5/5f/Angora_001.jpg'
    },
    {name: 'Methuselah',
     charisma: 4,
     latitude: 30.69585,
     longitude: -9.871111,
     color: 'grey',
     birthdate: 3000.days.ago,
     image_url: 'https://upload.wikimedia.org/wikipedia/commons/8/81/Feral_goat.jpg'
    },
    {name: 'Claudia',
     charisma: 8,
     latitude: 30.695,
     longitude: -9.87,
     color: 'grey',
     birthdate: 30.days.ago,
     image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Hausziege_04.jpg/1024px-Hausziege_04.jpg'
    },
  ]

  def reset_goats
    Goat.destroy_all

    GOAT_LIST.each do |goat|
      Goat.create goat
    end
  end
end

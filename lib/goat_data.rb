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
     latitude: 30.69501,
     longitude: -9.9,
     color: 'grey',
     birthdate: 30.days.ago,
     image_url: 'https://upload.wikimedia.org/wikipedia/commons/thumb/b/b2/Hausziege_04.jpg/1024px-Hausziege_04.jpg'
    },
    {name: 'Patrick',
     charisma: 8,
     latitude: 30.72,
     longitude: -9.78,
     color: 'grey',
     birthdate: 18.days.ago,
     image_url: 'https://i.ytimg.com/vi/a4Vwsglnllw/maxresdefault.jpg'
    },
    {name: 'Denise',
     charisma: 8,
     latitude: 30.67,
     longitude: -9.7993,
     color: 'brown mottled',
     birthdate: 48.days.ago,
     image_url: 'https://pixabay.com/static/uploads/photo/2016/04/06/13/23/goats-1311755_960_720.jpg'
    },
    {name: 'Regina George',
     charisma: 8,
     latitude: 30.64,
     longitude: -9.80,
     color: 'white-grey',
     birthdate: 214.days.ago,
     image_url: 'https://upload.wikimedia.org/wikipedia/commons/2/2d/African_Pygmy_Goat_005.jpg'
    },
    {name: 'Murphy',
     charisma: 8,
     latitude: 30.67,
     longitude: -9.819,
     color: 'grey',
     birthdate: 180.days.ago,
     image_url: 'https://i.ytimg.com/vi/2ubNq277u4k/maxresdefault.jpg'
    },
  ]

  def reset_goats
    Goat.destroy_all

    GOAT_LIST.each do |goat|
      Goat.create goat
    end
  end
end

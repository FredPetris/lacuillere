Restaurant.destroy_all
restaurants_attributes = [
  {
    name:         "Epicure au Bristol",
    address:      "112 rue du Fg St-Honoré 75008 Paris",
  },
  {
    name:         "La truffière",
    address:      "4 rue Blainville 75005 Paris",
  },
  {
    name:         "Le pré catelan",
    address:      "route de Suresnes 75016 Paris",
  }
]
restaurants_attributes.each { |params| Restaurant.create!(params) }

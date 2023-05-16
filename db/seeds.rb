# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
user1 = User.create(name: "Juan Pablo")
user2 = User.create(name: "Gabriel")

house1 = House.create(
  { 
    name: "The Azteca",
    style: "Apartment",
    photo: "https://upload.wikimedia.org/wikipedia/commons/3/30/Penthouse_in_Ullanlinna%2C_Helsinki.jpg",
    garage: 2,
    bedrooms: 4,
    bathrooms: 3,
    area: 200.7,
    location: "Calle madero, Mexico CDMX",
    price: 27.5,
    description: "This apartment is located in the city center. It is a perfect place to stay while visiting most famous places in the city"
  })

  house2 = House.create(
  { 
    name: "The Riviera",
    style: "Apartment",
    photo: "https://upload.wikimedia.org/wikipedia/commons/0/04/Penthouse_Rendering.jpg",
    garage: 2,
    bedrooms: 4,
    bathrooms: 3,
    area: 200.7,
    location: "Acapulco",
    price: 27.5,
    description: "This apartment is located in the city center. It is a perfect place to stay while visiting most famous places in the city"
  })

  house3 = House.create(
  {  
    name: "The Sausalito",
    style: "Duplex",
    photo: "https://upload.wikimedia.org/wikipedia/commons/3/3e/Sausalito-modern-duplex.jpg",
    garage: 2,
    bedrooms: 3,
    bathrooms: 2,
    area: 170.5,
    location: "Los Angeles, California",
    price: 65.50,
    description: "This spacious Duplex is perfect for families or groups of friends looking for a comfortable and convenient home away from home. With three bedrooms, two bathrooms, and a garage, this house has plenty of space for everyone. The location is ideal for exploring all that Los Angeles has to offer."
    
  })

  house4 = House.create(
  {  
    name: "The Green loft",
    style: "Apartment",
    photo: "https://upload.wikimedia.org/wikipedia/commons/4/40/400SGreenLoft.jpg",
    garage: 1,
    bedrooms: 2,
    bathrooms: 1,
    area: 95.7,
    location: "New York City, New York",
    price: 32.75,
    description: "This cozy apartment is located in the heart of New York City and is perfect for couples or small families. With two bedrooms, one bathroom, and a garage, this apartment has everything you need for a comfortable stay. The location is unbeatable, with easy access to all the best restaurants, shops, and attractions in the city."
  })

  house5 = House.create(
  { 
    name: "Studio Apartment Minneapolis",
    style: "Studio",
    photo: "https://upload.wikimedia.org/wikipedia/commons/d/d6/Studio_Apartment_Minneapolis_1.jpg",
    garage: 0,
    bedrooms: 1,
    bathrooms: 1,
    area: 120.3,
    location: "Seattle, Washington",
    price: 45.50,
    description: "This cozy studio is located in the heart of Seattle and is perfect for solo travelers or couples. With one bedroom, one bathroom, and a comfortable living area, this studio has everything you need for a relaxing stay. The location is ideal, with easy access to all the best coffee shops, restaurants, and attractions in the city."
  })

  house6 = House.create(
  {  
    name: "Baeder architektur village",
    style: "Apartment",
    photo: "https://upload.wikimedia.org/wikipedia/commons/3/30/Penthouse_in_Ullanlinna%2C_Helsinki.jpg",
    garage: 1,
    bedrooms: 3,
    bathrooms: 2,
    area: 180.2,
    location: "Chicago, Illinois",
    price: 62.00,
    description: "This modern apartment is located in the heart of Chicago and is perfect for families or groups of friends. With three bedrooms, two bathrooms, and a garage, this apartment has plenty of space for everyone. The location is unbeatable, with easy access to all the best museums, restaurants, and attractions in the city."
})

Reservation.create(user_id: user1.id, house_id: house4.id, startDate: "27/06/2023", endDate: "30/06/2023")
Reservation.create(user_id: user2.id, house_id: house6.id, startDate: "27/07/2023", endDate: "27/07/2023")
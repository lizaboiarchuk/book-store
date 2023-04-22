# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)
Book.create(title: 'The Great Gatsby', description: 'A novel by F. Scott Fitzgerald', author: 'F. Scott Fitzgerald', genres: ['Fiction', 'Classic'], price: 9.99)
Book.create(title: 'To Kill a Mockingbird', description: 'A novel by Harper Lee', author: 'Harper Lee', genres: ['Fiction', 'Classic'], price: 7.99)
Book.create(title: '1984', description: 'A novel by George Orwell', author: 'George Orwell', genres: ['Fiction', 'Dystopian'], price: 10.99)

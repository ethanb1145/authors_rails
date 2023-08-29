# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

author1 = Author.create(name: "J.K. Rowling", hometown: "Yate, England", currently_writing: true, total_awards: 20)
author2 = Author.create(name: "George R.R. Martin", hometown: "Bayonne, New Jersey", currently_writing: false, total_awards: 5)
author3 = Author.create(name: "Stephen King", hometown: "Portland, Maine", currently_writing: true, total_awards: 15)

author1.books.create(book_name: "Harry Potter and the Philosopher's Stone", genre: "Fantasy", series: true, page_count: 223)
author1.books.create(book_name: "Harry Potter and the Chamber of Secrets", genre: "Fantasy", series: true, page_count: 251)
author1.books.create(book_name: "Harry Potter and the Prisoner of Azkaban", genre: "Fantasy", series: true, page_count: 317)

author2.books.create(book_name: "A Game of Thrones", genre: "Fantasy", series: true, page_count: 694)
author2.books.create(book_name: "A Clash of Kings", genre: "Fantasy", series: true, page_count: 761)
author2.books.create(book_name: "A Storm of Swords", genre: "Fantasy", series: true, page_count: 973)

author3.books.create(book_name: "It", genre: "Horror", series: false, page_count: 1138)
author3.books.create(book_name: "The Shining", genre: "Horror", series: false, page_count: 447)
author3.books.create(book_name: "Carrie", genre: "Horror", series: false, page_count: 199)

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Image.delete_all
Image.reset_pk_sequence
Image.create([

               {name: 'Салями', file: 'pizza1.jpg', theme_id: 2},
               {name: 'Маргарита', file: 'pizza2.jpg', theme_id: 2},
               {name: 'Шпинат', file: 'pizza3.jpg', theme_id: 3},
               {name: 'Ананас', file: 'pizza4.jpg', theme_id: 4},
               {name: 'Говядина', file: 'pizza5.jpg', theme_id: 5},
               {name: 'Сыр', file: 'pizza6.jpg', theme_id: 6},
               {name: 'Карбонара', file: 'pizza7.jpg', theme_id: 7},
             ])

Theme.delete_all
Theme.reset_pk_sequence
Theme.create([

               {name: "Пицца Салями"},      # 1
               {name: "Пицца Маргарита"},      # 2
               {name: "Пицца Маргарита со шпинатом"},# 3
               {name: "Пицца с Ананасом"}, #4
               {name: "Пицца с Говядиной"}, #5
               {name: "Пицца Сырная"}, #6
               {name: "Пицца Карбонара"}, #7
             ])
User.delete_all
User.reset_pk_sequence
User.create([

              {name: "Kate", email: "kate@mail.ru", password: "111", password_confirmation: "111"},
            ])

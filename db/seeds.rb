# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Account.create([{ name: 'Ganja', email: 'admin@gmail.com', password: '@dm1n_#$%7' },
                         { name: 'Ganja', email: 'sys_admin@gmail.com', password: '2@3#x%x$i??i' }])
Product.create([{ name: 'product1', status: Product.statuses[:active]  },
                { name: 'product2', note: 'note 2', price: 123, status: Product.statuses[:active] },
                { name: 'inactive product', status: Product.statuses[:inactive] }])
News.create([{ title: 'title', subject: 'subject', status: News.statuses[:active] }])
Performance.create([{ title: 'title', subject: 'subject', period: '12 month', status: News.statuses[:active] }])

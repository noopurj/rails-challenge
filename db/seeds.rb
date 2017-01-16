# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
order1 = Order.create({
    :date => Time.now.to_datetime
                     })
order1.order_items.create({
                             :meal_name => 'Samsui Chicken Rice'
                         })
order1.order_items.create({
                             :meal_name => 'Farm Fresh Grilled Chicken'
                         })
order2 = Order.create({
                          :date => Time.now.to_datetime
                      })
order2.order_items.create({
                              :meal_name => 'Sambal Pasta'
                          })
order2.order_items.create({
                              :meal_name => 'Miso Cream Pasta'
                          })
# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

cellphones = Cellphone.create([{reference: 'iPhone 6', os: "iOS", user_id:1}, {reference: 'Galaxy S7', os: "Android", user_id:2},
            {reference: 'HTC ONE', os: "Android", user_id:3}, {reference: 'Nokia N8', os: "Other", user_id:4} ])
            
users = User.create([{username: "edgardian182", email:"edgarquintana984@hotmail.com"}, 
                    {username: "auris15", email:"auris.p_2006@gmail.com"}])
                    
user = User.first
cell = Cellphone.last

user.cellphones << cell
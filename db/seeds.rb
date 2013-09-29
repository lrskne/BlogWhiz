# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# lbelater - get rid of stubbed seed scaffold comments above, not needed!

Post.create(title: 'Post seed one', content: "Post one content ")
Post.create(title: 'Post seed two', content: "Post two content ")
Post.create(title: 'Post seed three', content: "Post three content ")
Post.create(title: 'Post seed four', content: "Post four content ")

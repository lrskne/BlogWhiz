# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
# lbelater - get rid of stubbed seed scaffold comments above, not needed!
# lbelater: Post - title, content
# lbelater: Comment - author, body
# params = {
#   c:  {title: "Post seed one", content: "Post one content",
#         comments_attributes:
#       { author: "Memyself", body: "this is a great post one comment one"}
#       }
# }

# Person.create([
#     {first_name: "Laura", last_name: "Erskine", phone:"425-888-9999"},
#     {first_name: "Mark",  last_name: "Erskine", phone:"206-444-8888"}
# ])

# Address.create([
#   {person_id: 1, street_address: "10203 NE 22nd Place", city: "Bellevue", state: "WA", zip: "98004"},
#   {person_id: 2, street_address: "111 Elm Street"     , city: "Seattle",  state: "WA", zip: "98004"}
# ])


# post = Post.create(params[:c])

# Another way
#5.times do |i|
#  Product.create(name: "Product ##{i}", description: "A product.")
#end

#5.times do |i|
#  Post.create(title: "Post seed ##{i}", content: "post table content ##{i}")
#  Comment.create(post_id: ##{i}, body: "comment table body ##{i}")
#end

# lbelater - this requires a rake db:reset (and make sure there are not any open
# connections in browser or otherwise to sql database or the tables will not be
# dropped)
Post.create(title: "Post seed 1", content: "post table content 1 - Lorem i
psum dolor sit amet, consectetur adipisicing
elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.
Ut enim ad minim veniam,quis nostrud exercitation ullamco laboris nisi ut aliquip
ex ea commodo consequat. Duis aute irure dolor in reprehenderit in
voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint
occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit
anim id est laborum. ")

Comment.create(post_id: 1, author: "Laura authored", body: "comment table body 1")

Post.create(title: "Post seed 2", content: "post table content 2")
Comment.create(post_id: 2, author: "Laura authored", body: "comment table body 2")



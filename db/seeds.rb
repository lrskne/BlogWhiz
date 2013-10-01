# This requires a rake db:reset (and make sure there are not any open
# connections in browser or otherwise to sql database or the tables will not be
# dropped)
Post.create(title: "Post seed 1", category: "Ruby", content: "post table content 1 - Lorem i
psum dolor sit ")

Comment.create(post_id: 1, author: "Laura authored", body: "comment table body 1")

Post.create(title: "Post seed 2", category: "Git", content: "post table content 2 - Lorem i
psum dolor sit")
Comment.create(post_id: 2, author: "Laura authored", body: "comment table body 2")



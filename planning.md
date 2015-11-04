# MoodTracks
### for when one word isn't enough

## Posts
- RESTful routes
- have many likes
- Table columns: 
	Song title
	Song artist
	Description
	Timestamp
	User ID

### Public home page (post index)
- most recent 5 posts

### Logged in home page (post index)
- most recent 10 posts

### Create/New

### Show
- form to comment on a post
- shows comments

### Edit

### Delete


## Users
- Table columns:
	Username
	Password_hash

- have many posts

### Posts (Show)
- /user/:id/posts


## Comments
- nested within Users
- Table columns:
	Content
	Post ID
	User ID

### Create/New
- form on the show page for a post

### Index
- shows all comments for a user


## Likes
- nested within Users
- Table columns:
	Post ID
	User ID

### Create/New
- form on the show page for a post (not really a form, just a button)

### Index
- shows all likes for a user
	





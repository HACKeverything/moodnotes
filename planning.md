# MoodNotes
# MoodTracks

### for when words aren't enough

## Posts
- RESTful routes
- have many likes
- Table columns: 
	* Song title
	* Song artist
	* Description
	* Spotify URL
	* Timestamp
	* User ID

### Public home page (post index)
- most recent 5 posts, sorted by timestamp
- Song title
- Song artist
- number of likes/comments?
- Username where post.user_id = user ID
- login link (create session)
- register link (new user)

### Logged in home page (post index)
- must be logged in
- most recent 10 posts
- same info as public home page
- links to Show pages
- link to 'My profile', '/users/:id' id is current user id
- logout link (delete session)

### Create/New
- must be logged in

### Show
- must be logged in
- Song title
- Artist
- Username where post.user_id = user ID
- Description
- Embedded Spotify play button
- form to comment on the post
- button to like the post
- button to delete the post
- all comments and likes where post ID = params ID
- link 

### Edit
- must be logged in as the user of that post

### Delete
- must be logged in as the user of that post



## Users
- Table columns:
	* Username
	* Password_hash

- has many posts
- has many comments
- has many likes
- has many followers, through relationships table

### Create/New 
- form with username, password, password confirmation

### Show (displays all posts for the user)
- must be logged in
- /user/:id/
- posts where post.user_id = params ID
- link to posts liked
- link to posts commented on
- button to follow user if params ID is not the same as current user ID



## Comments
- nested within Users
- Table columns:
	* Content
	* Post ID
	* User ID

### Create/New
- must be logged in
- form on the show page for a post

### Index
- must be logged in
- shows all comments for a user
- /users/:id/comments



## Likes
- nested within Users
- Table columns:
	* Post ID
	* User ID

### Create/New
- must be logged in
- form on the show page for a post (not really a form, just a button)

### Index
- must be logged in
- shows all likes for a user
- /users/:id/likes




## ???? Relationships ?????? Maybe? 

- has many through
- Table columns:
	* follower id
	* followed id

- button on a user's show page
- user id would be ID of show page
- follower id would be id of current user




## Header (only show header if logged in)
Links:
- home page (posts index)
- my profile
- log out
- bonus: change password


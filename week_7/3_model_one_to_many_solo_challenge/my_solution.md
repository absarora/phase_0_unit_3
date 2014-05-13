# U3.W7: Modeling a Real-World Database (SOLO CHALLENGE)

## Release 0: Users Fields
<!-- Identify the fields Twitter collects data for -->
```
- my (first and last) name
- username
- avatar
- Tweets
- Following
- Followers
- Favorites
- Lists
```
## Release 1: Tweet Fields
<!-- Identify the fields Twitter uses to represent/display a tweet. What are you required or allowed to enter? -->
```
- Text box (less than 140 characters)
- Image (Optional)
```

## Release 2: Explain the relationship
The relationship between `users` and `tweets` is: 
<!-- because... -->
```
"user_id" because a user has many tweets but a tweet belongs to a particular user. #one_to_many-schema
```

## Release 3: Schema Design
<!-- Include your image (inline) of your schema -->
![Twitter: One to Many Schema](https://raw.githubusercontent.com/absarora/phase_0_unit_3/master/week_7/imgs/twitter.png)

## Release 4: SQL Statements: Access your tables and return:
- all the tweets for a certain user id
```
SELECT tweets FROM users
WHERE id = 1
```
- the tweets for a certain user id that were made after last Wednesday (whenever last Wednesday was for you)
```
SELECT tweets
FROM users JOIN tweets ON (id = user_id)
WHERE created_at > 2014-05-07
```
- all the tweets associated with a given user's twitter handle
```
SELECT tweets FROM users
WHERE username = 'absingharora'
```
- the twitter handle associated with a given tweet id
```
SELECT username
FROM users JOIN tweets ON (id = user_id)
WHERE tweets.id = 1
```

## Release 5: Reflection
<!-- Be sure to add your reflection here!!! -->
```
I like the way we had to analyze twitter to understand databases and practice schemas and writing
our own sql to fetch data from the database.
```

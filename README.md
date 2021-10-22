# AceBook

A social media app where users can connect with family and friends.

## Specifications

- Users can sign up
- Users can log in
- Users can log out
- Posts can appear with the newest post first
- Users can comment on posts, and the first/last name and avatar show
- Users can like posts and the number of likes is visible next to the post
- A user's name and a little photo of them appears next to their posts
- Users can navigate the website with a nav bar at the top of the page
- Users can upload photos and see them just like posts

## User stories

```
As a User
So I can become a member of Acebook
I want to be able to sign-up
```

```
As a User
So I can use my Acebook account
I want to be able to log in
```

```
As a User
So no one else can use my Acebook account
I want to be able to logout
```

```
As a user
So I can see what my followers post
I want to be able to view my feed
```

```
As a User
So I can interact with my friends
I want to be able to leave comments, and likes
```

```
As a User
So friends know it is me commenting
I want my username and photo to appear next to my comment
```

```
As a user
So my followers can see it is my post
I want my username and photo to appear next to my post
```

```
As a user
So I can return to my feed, sign in, and sign out
I want to use a navigation bar
```

```
As a user
So I can show friends what I am doing
I want to be able to upload photos to as posts
```

## Wireframes ![acebook-wireframes](https://user-images.githubusercontent.com/82119816/138425370-b48909de-855d-4643-9e45-880a7ffb2dd4.png)

## Quickstart

First, clone this repository. Then:

```bash
> bundle install
> bin/rails db:create
> bin/rails db:migrate

> bundle exec rspec # Run the tests to ensure it works
> bin/rails server # Start the server at localhost:3000
> minimagick
```

## Usage

`rails s` or `rails server`
to navigate to `http://localhost:3000/`

## Database

`postgreSQL - pg (1.2.3)`

## Running tests

`rspec`

## Troubleshooting

If you don't have Node.js installed yet, you might run into this error when running rspec:

```
ExecJS::RuntimeUnavailable:
  Could not find a JavaScript runtime. See https://github.com/rails/execjs for a list of available runtimes.
```

Rails requires a Javascript runtime to work. The easiest way is to install Node by running `brew install node` - and then run `bundle exec rspec` again

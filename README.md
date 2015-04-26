---
  tags: sinatra, rack, routes, sessions
  languages: ruby
  resources: 2
---

# Sinatra XYZZY

You are standing at the end of a road before a small brick building. Around you is a forest. A small stream flows out of the building and down a gully.

You are the lone hero, on an adventure to implement the rest of this website and make it work for the next visitor.

Fork and clone this repository, `bundle`, then `rackup`. Go to http://localhost:9292 for your first instructions.

You will have to follow the instructions on each page, and the instructions embedded in the controllers, to fully implement this website. Read the comments carefully!

Once you are done, you should be able to go to the root of the site, see a link to register, click that link to go to the registration page, register with an email and password, and see a page that thanks you for registering and shows you your email.

If someone has not registered, they should not be able to browse to that
success page.

Note we're using sessions, which have been enabled in `application_controller.rb`. Refer to the last resource to learn more about simple authentication.

You should not have to add any files to this solution. You will have to
edit most of the files inside of app/.

**Very Important: Make sure to give all of your submit buttons an id='submit'; otherwise, Capybara will not find the button and the tests won't pass.**

## Resources
* [Sinatra Up and Running](http://books.flatironschool.com/books/101) - [Chapter 5 Hands On: Your Own Blog Engine](http://books.flatironschool.com/books/101), page 103
* [StackOverflow](http://stackoverflow.com/) - [What is a very simple authentication scheme for Sinatra/Rack](http://stackoverflow.com/questions/3559824/what-is-a-very-simple-authentication-scheme-for-sinatra-rack)
# twitter-adventure

#Testing Insructions 

These instructions and comments are a continuation for README.md

It is important to mention that the Ruby version used was 2.4. Gemfile was edited so that the version for chromedriver-helper 1.2. Other Ruby version presented error in installation.

postgres (PostgreSQL) 13.2 was used.

Be sure to update database.yml with your the username and password that you set for the db as:
```
default: &default
  adapter: postgresql
  encoding: unicode
  # For details on connection pooling, see Rails configuration guide
  # http://guides.rubyonrails.org/configuring.html#database-pooling
  pool: <%= ENV.fetch("RAILS_MAX_THREADS") { 5 } %>
  username: <here> 
  password: <here>
```

In the rails_helper.rb, the default driver was updated to:
Capybara.default_driver = :selenium_chrome

Provided Features files:
1. spec\features\user_sign_in_spec.rb
    * Scenario for sign in (already existed).
    * Scenario for sign out.
    * Scenario for invalid credentials
2. spec\features\manage_post_spec.rb
    * Scenario for creating post.
    * 2 different scenarios editing post (Edit links and clicking on the post).
    * Scenario for deleting post.
    * Scenario for adding comment.

You can run on the cases in the features mentioned above by running:
```
bundle exec rspec spec/features/
```
And provide you with 8 examples as below which equal to the number of scenarios.
```
Finished in 34.82 seconds (files took 3.94 seconds to load)
8 examples, 0 failures
```
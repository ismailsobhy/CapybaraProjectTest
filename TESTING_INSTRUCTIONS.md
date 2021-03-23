# Testing Insructions 

These instructions and comments are a continuation for README.md

It is important to mention that the **Ruby** version used was **2.5.1**. Gemfile was edited so that webdrivers is used.

**postgres (PostgreSQL) 13.2** was used.

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
```
Capybara.default_driver = :selenium_chrome
```
Provided Features files:
1. spec\features\user_sign_in_spec.rb
    * Scenario for sign in (already existed).
    * Scenario for sign out.
    * Scenario for invalid credentials
2. spec\features\manage_post_spec.rb
    * Scenario for creating post.
    * Scenario for editing post using edit link to edit description.
    * Scenario for editing post by clicking on it to edit title.
    * Scenario for deleting post.
    * Scenario for adding comment.

You can run on the cases in the features mentioned above by running:
```
bundle exec rspec spec/features/
```
And provide you with 8 examples as below which equal to the number of scenarios.
```
Finished in 1 minute 2.36 seconds (files took 7.93 seconds to load)
20 examples, 0 failures
```

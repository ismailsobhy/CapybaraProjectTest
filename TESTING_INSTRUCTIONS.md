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
Provided Features files (spec\features\):
* user_sign_in_spec.rb
* user_sign_up_spec.rb
* user_edit_profile_spec.rb
* create_post_spec.rb
* edit_post_spec.rb
* delete_post_spec.rb
* search_post_spec.rb
* create_comment_spec.rb
* delete_comment_spec.rb
* user_sign_out_spec.rb
* verify_user_posts.rb

You can run on the cases in the features mentioned above by running:
```
bundle exec rspec spec/features/
```
And provide you with 8 examples as below which equal to the number of scenarios.
```
Finished in 1 minute 0.77 seconds (files took 5.1 seconds to load)
21 examples, 0 failures
```

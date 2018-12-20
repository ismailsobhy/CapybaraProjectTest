# Code challenge

Welcome to the iubenda testing engineer code challenge 🎉.

## Instructions for the candidate

In this repository you find a sample Rails5 blogging application, your challenge consist of:

1. Run the Rails application following the **Setup instructions below**
2. Find the main use cases of this application and write them down in a `USE_CASE.md` file following a standard format: scenario, preconditions, postconditions... the file needs to be a **valid** markdown file;
3. For each of the use case found you need to write the [capybara tests](https://github.com/teamcapybara/capybara) which checks automatically that the application is working as expected.

The application is already set-up in order to run capybara specs. You can find a test template under `spec/features`; all the tests should live inside that folder.
In order to run the tests you need to run the following command: `$ bundle exec rspec`.

All the created capybara tests and the `USE_CASE.md` file should be committed on this repository on a separate branch (you already have commit access to this repository) and a [Merge requests](https://docs.gitlab.com/ee/gitlab-basics/add-merge-request.html) should be made starting from the new branch into `master` branch of this repository.

### Want to use another acceptance testing tool?

**Capybara** is the tool that we use in our company and that you'll need to use in your day-to-day job but if you feel more comfortable w/ another tool you could use it. If you're doing that it's really important to write a `TESTING_INSTRUCTIONS.md` file that includes all the steps needed in order to run the tests.

If something is not clear, please ask 🙂.

## What's this application about

This application is a basic blogging application: the registered user can *list*, *create*, *edit* and *delete* **its own posts**.
The user can also *write comments* to the posts and *search* them through a search box on top.

## Setup instructions

### Requirements

- [ruby >= 2.3.0](https://www.ruby-lang.org/en/documentation/installation/)
- bundler installed on the ruby version: `$ gem install bundler`
- postgresql >= 9.5 installed on your machine

### Instructions

In order to install the app you need to run : `$ bin/setup`

A Demo user is created with the following credentials: `email: 'test1@test.com', password: 'password1'`

If you have problems during the setup of the application feel free to contact us on our hiring platform workable.

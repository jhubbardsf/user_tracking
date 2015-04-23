## User Tracking Demo

# Installation instructions.

1. Using RVM, create new Gemset for app.

```rvm use 2.0.0@user-tracking --create```

2. Run `bundle install`.
3. Run `bundle exec rake db:seed`.
4. If QT is not installed on your computer, [install QT](https://github.com/thoughtbot/capybara-webkit/wiki/Installing-Qt-and-compiling-capybara-webkit).
5. Run server using `bundle exec rails s`.

# Testing instructions.

Run `bundle exec rspec spec` to run full test suite.
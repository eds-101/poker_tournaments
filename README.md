Poker Tournament Project
=================

* I enjoy playing poker and I want to keep a record of the games I play in my very own Poker results application.

Features:
-------

```
Essentials

As a User
So that I can keep track of results from games played
I want to be able to add a new record of Poker Match results

As a User
So that I can understand the Poker Tournament results
I want to be able to see who played in the tournament and what position they finished in

As a User
So that I can understand who the best players are
I want to be able to see a league table based on the results

As a User
So that I can search a specific tournament
I want to give each Poker match a title and date

As a user
So that I can see whos making and losing money
I want to see each players' overall money gain or loss

As a user
So that I can browse my previous entries
I want to see a filtered list of Poker Tournaments I've played in

As a user
So that I can be flexible with my attention
I want to switch between summarised and detailed view


As a user
So that I can correct an error
I want to be able to edit details of a Poker Tournament

Extras

As a user
So that I can remember any big events or hands
I want to be able to add a Comment to a Poker game entry

As a user
So that I can see my past big events/big hands
I want to see associated Comments when viewing a Poker game entry


```


-----------
Bonus:
-----

If you have time you can implement the following:

* In order to start a conversation as a maker I want to reply to a peep from another maker.

And/Or:

* Work on the CSS to make it look good.

Good luck and let the chitter begin!

Code Review
-----------

In code review we'll be hoping to see:

* All tests passing
* High [Test coverage](https://github.com/makersacademy/course/blob/master/pills/test_coverage.md) (>95% is good)
* The code is elegant: every class has a clear responsibility, methods are short etc.

Reviewers will potentially be using this [code review rubric](docs/review.md).  Referring to this rubric in advance may make the challenge somewhat easier.  You should be the judge of how much challenge you want at this moment.

Automated Tests:
-----

Opening a pull request against this repository will will trigger Travis CI to perform a build of your application and run your full suite of RSpec tests. If any of your tests rely on a connection with your database - and they should - this is likely to cause a problem. The build of your application created by has no connection to the local database you will have created on your machine, so when your tests try to interact with it they'll be unable to do so and will fail.

If you want a green tick against your pull request you'll need to configure Travis' build process by adding the necessary steps for creating your database to the `.travis.yml` file.

- [Travis Basics](https://docs.travis-ci.com/user/tutorial/)
- [Travis - Setting up Databases](https://docs.travis-ci.com/user/database-setup/)

Notes on test coverage
----------------------

Please ensure you have the following **AT THE TOP** of your spec_helper.rb in order to have test coverage stats generated
on your pull request:

```ruby
require 'simplecov'
require 'simplecov-console'

SimpleCov.formatter = SimpleCov::Formatter::MultiFormatter.new([
  SimpleCov::Formatter::Console,
  # Want a nice code coverage website? Uncomment this next line!
  # SimpleCov::Formatter::HTMLFormatter
])
SimpleCov.start
```

You can see your test coverage when you run your tests. If you want this in a graphical form, uncomment the `HTMLFormatter` line and see what happens!

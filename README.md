# Checkbo**x**er

![Build Status](https://travis-ci.org/ruthmoog/checkboxer.svg?branch=master)

Checkbo**x**er is a webtool built with STEM journal Editors in mind.  Use Checkbo**x**er to speed up submission requirement checks in pre-review.

1. Customise your modular revision template and checklist items in a CSV file
2. Complete the checklist per manuscript
3. Copy and paste the generated text to your email interface where you can personalise your message

### Why Checkbo**x**er?
I've witnessed Journal Editors using paper checklists, struggling to copy and paste paragraphs from a large body of template text.  Checkbo**x**er remedies this system, generating only the text you need, every time.  

- Checkbo**x**er can save Editors _minutes_ for every submission they check!
- Checkbo**x**er lowers the chance of human errors, and makes editorial communication quality more consistent!

## Installation and Set Up

First download the required gems with bundler:
```console
$ bundle install
```

Then you'll need to install a webserver, I've used `thin`:
```console
$ gem install thin
```

**Important**: You will need to customise your CSV file:
![CSV guidelines](https://thepracticaldev.s3.amazonaws.com/i/amh4c3yr9bawb487c61b.png)

## Running the tests

To run all feature and unit tests, use `rspec` in the command line from the project root:
```console
$ rspec

Hello, world!
  index displays hello world

Finished in 0.01611 seconds (files took 0.42259 seconds to load)
1 example, 0 failures
```

To run code style tests, use `rubocop` in the command line from the project root:
```console
$ rubocop
Inspecting 6 files
......

6 files inspected, no offenses detected
```

## Running the app

Run your webserver then navigate to the `localhose:XXportXX` in your browser.

Eg using `thin` run the command in your terminal then go to `localhost:3000`:
```console
$ thin start
Using rack adapter
Thin web server (v1.7.2 codename Bachmanity)
Maximum connections set to 1024
Listening on 0.0.0.0:3000, CTRL+C to stop
```

## Tech stack

- Capybara
- CSS
- Embedded Ruby
- HTML
- RSpec
- Rubocop
- Ruby
- SimpleCov
- Sinatra
- Travis CI

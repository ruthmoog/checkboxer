# Checkbo**x**er

Checkbo**x**er is a webtool built with STEM journal editors in mind.  Use Checkbo**x**er to speed up submission requirement checks in pre-review.

- Customise your modular revision template and checklist items in a CSV file
- Complete the checklist per manuscript
- Copy and paste the generated text to your email interface where you can personalise your message

I witnessed Journal Editors using paper checklists and having to copy and paste paragraphs from a large body of text.  Checkbo**x**er replaces this system, generating only the text you need every time.  

- Checkbo**x**er can save Editors _minutes_ for every submission they check!
- Checkbo**x**er lowers the chance of human errors, and makes editorial communications more consistent!

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
```csv
First item is the checkbox label,"After the comma is your correction request, you can use commas as long as this is placed withing double quotation marks"
Author information,"Please ensure that the names and institutions of all authors are included on the title page."
```

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

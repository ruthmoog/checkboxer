# Checkbo**x**er

Checkbo**x**er is a webtool for STEM journal editors, to speed up the technical check process in peer review.

The user completes a checklist using the webform, relevant to the journal submission policies.  A customised template is built automatically based on the completed checklist; this can then be tweaked or sent as is by the user to the manuscript owner.

This tool replaces manual, paper checklists.  Compared to existing workflows, Checkbo**x**er could save editors minutes for every submission they check!

Set up: Journals must create a csv file of standard correspondence modules to build templates from.

## Running the tests

To run all feature and unit tests, use `rspec` in the command line from the project root:
```shell
$ rspec

Hello, world!
  index displays hello world

Finished in 0.01611 seconds (files took 0.42259 seconds to load)
1 example, 0 failures
```

To run code style tests, use `rubocop` in the command line from the project root:
```shell
$ rubocop
Inspecting 6 files
......

6 files inspected, no offenses detected
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

## Animal Checkboxes??

I had the idea to implement this project before I could code.  In March 2019 I made a working webtool with the functionality needed but used animals and animal noises for simplicity.  This project builds on the earlier iteration to make the functional software work in a publishing context.

## How to run

Run the file from the command line with `ruby animal_checkboxes.rb` then in your web browser navigate to the local address `localhost:4567`:

```shell
$ ruby animal_checkboxes.rb
== Sinatra (v2.0.5) has taken the stage on 4567 for development with backup from Thin
Thin web server (v1.7.2 codename Bachmanity)
Maximum connections set to 1024
Listening on localhost:4567, CTRL+C to stop
```
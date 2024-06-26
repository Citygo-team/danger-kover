# danger-kover

A danger plugin for enforcing test code coverage % based on a Kover coverage report.

![Danger Kover Warning Messages](images/danger-kover-warning-messages.jpg)
![Multi Module Code Coverage Report](images/multi-module-code-coverage.jpg)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'danger-kover'
```

## Danger Kover Plugin Usage 

It depends on having a Kover coverage report generated for your project. 

For Android projects, [kotlinx-kover](https://github.com/Kotlin/kotlinx-kover) works well. 

Running with default values:

```ruby
# Report coverage of modified files. 
# Fail if either total project coverage or any modified file's coverage is under 70%.
kover.report 'Module Name', 'path/to/kover/report.xml'
```

Running with custom attributes:

- Fail if total project coverage is under 70%.
- Or if any modified file's coverage is under 80%.

```ruby
kover.total_threshold = 70
kover.file_threshold = 80
kover.report 'Module Name', 'path/to/kover/report.xml'
```

Optional attribute to only warn instead of failing if below thresholds:

```ruby
kover.fail_if_under_threshold = false
```

## Credits

This is a fork, based on [Shroud](https://github.com/livefront/danger-shroud).

## Development

1. Clone this repo
2. Run `bundle install` to setup dependencies.
3. Run `bundle exec rake spec` to run the tests.
4. Use `bundle exec guard` to automatically have tests run as you make changes.
5. Make your changes.

## Publishing

How to build a gem (make sure to update the version):

```
gem build danger-kover.gemspec
```

How to publish a gem:

```
gem push danger-kover-VERSION.gem
```

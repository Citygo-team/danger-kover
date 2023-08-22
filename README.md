# danger-kover

A danger plugin for enforcing code coverage coverage based on a Kover coverage report.

![Sample Banner Image](images/bannerImage.png)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'danger-kover'
```

## Usage Kover

It depends on having a Kover coverage report generated for your project. 

For Android projects, [kotlinx-kover](https://github.com/Kotlin/kotlinx-kover) works well. 

Running with default values:

```ruby
# Report coverage of modified files, fail if either total 
# project coverage or any modified file's coverage is under 90%
kover.report 'Module Name', 'path/to/kover/report.xml'
```

Running with custom coverage thresholds:

```ruby
# Report coverage of modified files, fail if total project coverage is under 80%,
# or if any modified file's coverage is under 95%
kover.report 'Module Name', 'path/to/kover/report.xml', 80, 95
```

Warn on builds instead of fail:

```ruby
# Report coverage of modified files the same as the above example, except the
# builds will only warn instead of fail if below thresholds
kover.report 'Module Name', 'path/to/kover/report.xml', 80, 95, false
```

## Development

1. Clone this repo
2. Run `bundle install` to setup dependencies.
3. Run `bundle exec rake spec` to run the tests.
4. Use `bundle exec guard` to automatically have tests run as you make changes.
5. Make your changes.

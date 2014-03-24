# rinxter_api

A Ruby-based API client to retrieve data from the [Rinxter Repository API][rinxterapi]

[![Build Status](https://travis-ci.org/miketheman/rinxter_api.png?branch=master)](https://travis-ci.org/miketheman/rinxter_api)
[![Gem Version](https://badge.fury.io/rb/rinxter_api.png)](http://badge.fury.io/rb/rinxter_api)
[![Code Climate](https://codeclimate.com/github/miketheman/rinxter_api.png)](https://codeclimate.com/github/miketheman/rinxter_api)
[![Coverage Status](https://coveralls.io/repos/miketheman/rinxter_api/badge.png)](https://coveralls.io/r/miketheman/rinxter_api)
[![Dependency Status](https://gemnasium.com/miketheman/rinxter_api.png)](https://gemnasium.com/miketheman/rinxter_api)

## Requirements

* [HTTParty][] gem

Developed/tested on Ruby 2.1.1.
Requires at least 2.0.0, due to using keyword arguments.

## Usage

Require the `rinxter_api` gem in your project, and make calls to the API.
The attempt is to return semi-formed Objects, responding to the attributes that Rinxter
implements as method calls against the returned Objects.

See the `examples/` subdirectory for some ideas.

## Contributing

This is a work in progress, whenever I have time to dedicate to the project.

There are more dependencies in order to work on the code in this gem.
They are listed in the `*.gemspec` and `Gemfile` files in the root of the project.

Use a tool like [bundler][] to install them to your local directory.

The `Rakefile` contains the tasks associated with development, testing, packaging, etc.
Run `rake -T` to see the tasks, and execute `rake` on its own for the default test suite.

Please be aware of the current style conventions, as well as any tests that are performed via [Travis-CI][]


[bundler]: http://bundler.io/
[HTTParty]: https://github.com/jnunemaker/httparty
[rinxterapi]: http://rinxter.com/www/?p=266
[Travis-CI]: https://travis-ci.org/

# rinxter_api

A Ruby-based API client to retrieve data from the [Rinxter Repository API][rinxterapi]

## Requirements

* [HTTParty][] gem

Developed/tested on Ruby 2.1.0, may work on older versions. Requires at least 1.9.3.

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

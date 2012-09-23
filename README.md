# Protoadmin

[![Build Status](https://secure.travis-ci.org/jejacks0n/protoadmin.png)](http://travis-ci.org/jejacks0n/protoadmin)
[![Dependency Status](https://gemnasium.com/jejacks0n/protoadmin.png)](https://gemnasium.com/jejacks0n/protoadmin)
[![Code Climate](https://codeclimate.com/badge.png)](https://codeclimate.com/github/jejacks0n/protoadmin)

ProtoAdmin is a Rails 3 interface for admin style management tools.  It's a collection of css, javascript, and view
helpers that help with common interface patterns that I've used / seen used over the years.  It also includes
generators.


## The Story

I've been doing this for a long time now, and I wanted a gem that I could drop into my next Rails project and have it
ready to go.  The intention of this project isn't to provide a one size fits all sort of thing, and is more about
providing a good starting point that I like and is mobile friendly.  I don't expect everyone to agree on what I use.

I've chosen several libraries that I think are great.  Here's a short list of libraries that are being utilized:

- Haml
- Sass
- CoffeeScript
- jQuery
- Twitter Bootstrap (bootstap-sass)
- Font Awesome
- Navigasmic


## Installation

Include the gem in your Gemfile and bundle to install the gem.

    gem 'protoadmin'


## Usage

Any controller that you want to be part of the admin interface should inherit from `Protoadmin::ApplicationController`.

    class ArticlesController < Protoadmin::ApplicationController

Protoadmin comes with all the standard Rails generators.  Just prefix a with `protoadmin:` -- so use
`protoadmin:scaffold` for instance instead of `scaffold`.

    rails g protoadmin:scaffold post title:string body:text published:boolean


## License

Licensed under the [MIT License](http://creativecommons.org/licenses/MIT/)

Copyright 2012 [Jeremy Jackson](https://github.com/jejacks0n)

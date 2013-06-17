# Comfan

[![Build Status](https://travis-ci.org/propertybase/comfan.png?branch=master)](https://travis-ci.org/propertybase/comfan) [![Coverage Status](https://coveralls.io/repos/propertybase/comfan/badge.png?branch=master)](https://coveralls.io/r/propertybase/comfan) [![Code Climate](https://codeclimate.com/github/propertybase/comfan.png)](https://codeclimate.com/github/propertybase/comfan) [![Dependency Status](https://gemnasium.com/propertybase/comfan.png)](https://gemnasium.com/propertybase/comfan) [![Gem Version](https://badge.fury.io/rb/comfan.png)](http://badge.fury.io/rb/comfan)

Named after a [tool used in the Star Wars universe](http://starwars.wikia.com/wiki/Comfan), this tool provides simple helper methods for ruby to provide functionality used in Salesforce.

## Installation

Add this line to your application's Gemfile:

    gem 'comfan'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install comfan

## Usage

### api_id

This method returns a API ID for the input ID. If the input already is an API (length >= 18 character), the same ID is returned.

Otherwise the API ID is calculated

### ui_id

This is method converts an API ID to an UI ID. If an UI ID is provided (length <= 15 characters), the same ID is returned.

Otherwise the UI ID is calculated

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
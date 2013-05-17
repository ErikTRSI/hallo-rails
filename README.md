# Hallo::Rails

Hallo-rails is the excellent Hallo.js in-place editor packaged as a gem for the Rails 3.1+ asset pipeline.

## Installation

Add this line to your application's Gemfile:

    gem 'hallo-rails'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install hallo-rails

Note, there is a dependency on [`Rangy`](http://code.google.com/p/rangy/) which is included and also dependencies on JQuery, JQuery UI and [`Font Awesome`](http://fortawesome.github.io/Font-Awesome/) which are not included.

Therefore assuming you have already added JQuery, JQuery UI and Font Awesome simply add the following to your application.js

    //= require rangy-core
    //= require hallo

## Usage

For full usage instructions please refer to the [`Hallo.js Documentation`](http://hallojs.org) but this should get you going

    <div class="editable" contenteditable="true">Edit me!</div>

Along with something like this

    $ ()->
      $('.editable').each ->
        $(this).hallo
          plugins:
            halloformat: {}
            halloblock: {}
            hallojustify: {}
            hallolists: {}
            halloreundo: {}
            hallohtml: {}
            hallolink: {}
          editable: true

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

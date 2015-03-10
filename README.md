# GetHead

Middleware that helps you to distinguish between HEAD and GET requests. At the moment Rails treats these two requests equally in production mode when you have perform_caching option in environment.rb set to true. By using get_head gem you will be able to check which request is performing at the moment by simply doing `request.head?` in your code.


## Installation

Add this line to your application's Gemfile:

```ruby
gem 'get_head'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install get_head

## Usage

This middleware will be automatically used by your Rails application. In order to delete it in certain environment, you can add this line to enviroment file(i.e. production.rb) :

```ruby
config.middleware.delete GetHead::Request
```

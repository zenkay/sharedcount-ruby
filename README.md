# SharedCount API Ruby Gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sharedcount'
```

And then execute:

```bash
$ bundle install
```

## Setup

Setup configuration parameters

```ruby
require "sharedcount"

Sharedcount.configure do |c|
  c.apikey = "your-api-key"
  c.endpoint = "http://free.sharedcount.com/"
end
```

## Usage

```ruby
api = Sharedcount::API.new
response = api.fetch("http://www.example.com/some-page.html")
```

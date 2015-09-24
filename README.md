# SharedCount Ruby Gem

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'sharedcount'
```

And then execute:

```bash
bundle install
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

result.raw_data
=> {"StumbleUpon"=>0, "Reddit"=>0, "Facebook"=>{"commentsbox_count"=>0, "click_count"=>0, "total_count"=>35, "comment_count"=>4, "like_count"=>6, "share_count"=>25}, "Delicious"=>0, "GooglePlusOne"=>7, "Buzz"=>0, "Twitter"=>0, "Diggs"=>0, "Pinterest"=>0, "LinkedIn"=>0}

result.total_actions
=> 42

# Other methods
result.stumble_upon_shares
result.reddit_shares
result.delicious_shares
result.google_plus_one
result.google_buzzs
result.twitter_shares
result.digg_shares
result.pinterest_shares
result.linkedin_shares
result.facebook_commentsbox
result.facebook_clicks
result.facebook_total
result.facebook_comments
result.facebook_likes
result.facebook_shares
```

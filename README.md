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

# Raw response from SharedCount
response.raw_data
=> {"StumbleUpon"=>0, 
	"Reddit"=>0, 
	"Facebook"=>{
		"commentsbox_count"=>0, 
		"click_count"=>0, 
		"total_count"=>35, 
		"comment_count"=>4, 
		"like_count"=>6, 
		"share_count"=>25}, 
	"Delicious"=>0, 
	"GooglePlusOne"=>7, 
	"Buzz"=>0, 
	"Twitter"=>0, 
	"Diggs"=>0, 
	"Pinterest"=>0, 
	"LinkedIn"=>0}

# Sum of all social actions
response.total_actions
=> 42

# Other methods
response.stumble_upon_shares
response.reddit_shares
response.delicious_shares
response.google_plus_one
response.google_buzzs
response.twitter_shares
response.digg_shares
response.pinterest_shares
response.linkedin_shares
response.facebook_commentsbox
response.facebook_clicks
response.facebook_total
response.facebook_comments
response.facebook_likes
response.facebook_shares
```

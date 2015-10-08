module Sharedcount
	class Data

		attr_accessor :stumble_upon_shares, :reddit_shares, :facebook_commentsbox,
			:facebook_clicks, :facebook_total, :facebook_comments, :facebook_likes,
			:facebook_shares, :delicious_shares, :google_plus_one, :google_buzzs,
			:twitter_shares, :pinterest_shares, :digg_shares, :linkedin_shares, 
			:total_actions, :raw_data

		def initialize(json_data)

			self.raw_data = json_data
      data = JSON.parse(json_data)

			self.stumble_upon_shares = (data["StumbleUpon"] || nil)
			self.reddit_shares = (data["Reddit"] || nil)
			self.delicious_shares = (data["Delicious"] || nil)
			self.google_plus_one = (data["GooglePlusOne"] || nil)
			self.google_buzzs = (data["Buzz"] || nil)
			self.twitter_shares = (data["Twitter"] || nil)
			self.digg_shares = (data["Diggs"] || nil)
			self.pinterest_shares = (data["Pinterest"] || nil)
			self.linkedin_shares = (data["LinkedIn"] || nil)
			self.facebook_commentsbox = (data["Facebook"]["commentsbox_count"] || nil)
			self.facebook_clicks = (data["Facebook"]["click_count"] || nil)
			self.facebook_total = (data["Facebook"]["total_count"] || nil)
			self.facebook_comments = (data["Facebook"]["comment_count"] || nil)
			self.facebook_likes = (data["Facebook"]["like_count"] || nil)
			self.facebook_shares = (data["Facebook"]["share_count"] || nil)

			self.total_actions = self.stumble_upon_shares + self.reddit_shares + self.delicious_shares + self.google_plus_one + self.google_buzzs + self.twitter_shares + self.digg_shares + self.pinterest_shares + self.linkedin_shares + self.facebook_total

		end

	end
end
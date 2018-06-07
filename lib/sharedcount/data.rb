module Sharedcount
	class Data

		attr_accessor :stumble_upon_shares, :reddit_shares, :facebook_commentsbox,
			:facebook_clicks, :facebook_total, :facebook_comments, :facebook_likes,
			:facebook_shares, :delicious_shares, :google_plus_one, :google_buzzs,
			:twitter_shares, :pinterest_shares, :digg_shares, :linkedin_shares,
			:total_actions, :json_data, :raw_data

		def initialize(json_data)

			self.json_data = json_data
      self.raw_data = JSON.parse(json_data)

			self.stumble_upon_shares = (self.raw_data["StumbleUpon"] || nil)
			self.reddit_shares = (self.raw_data["Reddit"] || nil)
			self.delicious_shares = (self.raw_data["Delicious"] || nil)
			self.google_plus_one = (self.raw_data["GooglePlusOne"] || nil)
			self.google_buzzs = (self.raw_data["Buzz"] || nil)
			self.twitter_shares = (self.raw_data["Twitter"] || nil)
			self.digg_shares = (self.raw_data["Diggs"] || nil)
			self.pinterest_shares = (self.raw_data["Pinterest"] || nil)
			self.linkedin_shares = (self.raw_data["LinkedIn"] || nil)
			self.facebook_commentsbox = (self.raw_data["Facebook"]["commentsbox_count"] || nil)
			self.facebook_clicks = (self.raw_data["Facebook"]["click_count"] || nil)
			self.facebook_total = (self.raw_data["Facebook"]["total_count"] || nil)
			self.facebook_comments = (self.raw_data["Facebook"]["comment_count"] || nil)
			self.facebook_likes = (self.raw_data["Facebook"]["like_count"] || nil)
			self.facebook_shares = (self.raw_data["Facebook"]["share_count"] || nil)

			self.total_actions = self.stumble_upon_shares.to_i + self.reddit_shares.to_i + self.delicious_shares.to_i + self.google_plus_one.to_i + self.google_buzzs.to_i + self.twitter_shares.to_i + self.digg_shares.to_i + self.pinterest_shares.to_i + self.linkedin_shares.to_i + self.facebook_total.to_i

		end

	end
end

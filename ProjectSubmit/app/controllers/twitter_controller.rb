class TwitterController < ApplicationController
	def initialize
    	@client = Twitter::REST::Client.new do |config|
      		config.consumer_key = "3jNJkFO8Q6rGwWaZjCmFzwdcT"
      		config.consumer_secret = "kzf7Q9pdJMf92bh4y7N8Up5fYOYqxKVInFeLVgdt7APtxKOYet"
      		config.access_token = "1446521881-gEU31fUevncy0Ikf2FkHQMVyZRnB9WTLobZh6o9"
      		config.access_token_secret = "4qRRUvHWYCKFQMiGmM7xe3eRj7MSKXOF4XpwqdJulumm1"
    	end
  	end

  	def tweet_post
    	tweet = params[:tweet]
    	message = 'Tweet posted sucessfully'

    	begin
      		@client.update(tweet)
    		rescue Exception => e
      		message = e.message
    	end

    	render text: message
  	end
end

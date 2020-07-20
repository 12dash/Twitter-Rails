require 'twitter'
class TweetsController < ApplicationController

    def index
        @title = "Twitter"
    end

    def getTweets        

        client = Twitter::REST::Client.new do |config|
            config.consumer_key        = "lRKkGdKMinIEGE7I3OgWq8HZP"
            config.consumer_secret     = "aQn5TW6z9qHM2FIRr9HmP3FJ7HPyxI6BjFLIVSKxfDvkIIcPUi"
            config.access_token        = "1260907135182897152-kevpG5Ho2LhAAwLx7Sc3fCTQvcxbtb"
            config.access_token_secret = "AlaU4X1XqCF8h6FzQM7qRfwofYA3GhuT4ROS5p7ZEw6g8"
        end

        client.user("gem")

        @tweets = client.user_timeline('rubyinside', count: 20)    
        
        render("tweet")
    end

end

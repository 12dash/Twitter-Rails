require 'twitter'
class TweetsController < ApplicationController

    def index
        @title = "Twitter"
    end

    def getTweets        

        

        client = Twitter::REST::Client.new do |config|
            config.consumer_key        = ENV['consumer_key']
            config.consumer_secret     = ENV['consumer_secret']
            config.access_token        = ENV['access_token ']
            config.access_token_secret = ENV['access_token_secret']
        end

        client.user("gem")
        
        @query = "#ruby -rt"

        @tweets = client.search( @query, lang: "ja")

        render("tweet")
    end

end

# coding:utf-8 
require 'rubygems'
require 'twitter'

class Tweet

  def tweet
    client = Twitter::REST::Client.new do |config|
      config.consumer_key       = ENV['CONSUMER_KEY']
      config.consumer_secret    = ENV['CONSUMER_SECRET']
      config.access_token        = ENV['ACCESS_TOKEN']
      config.access_token_secret = ENV['ACCESS_TOKEN_SECRET']
    end

    tweet_list = []
    File.open('tweet_list.txt') do |file|
      file.each_line do |line|
        tweet_list.push(line)
      end
    end
 
    client.update(tweet_list[rand(tweet_list.length)])
  end
end
require 'rubygems'
require 'sinatra'
require './tweet.rb'

get '/' do
  'under construction'
end

get '/tweet' do
  Tweet.new.tweet  # 動作チェックが終わったらコメントアウトすること
end

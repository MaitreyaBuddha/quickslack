#ruby

require 'bundler/setup'
require 'json'
require 'net/http'
require 'sinatra'

TRIGGER_WORD='/ud '
SLACK_TOKEN='YCRWuaC17gv8Ztff25UN03de'

post '/ud' do
  return 401 unless request['token'] == SLACK_TOKEN
  q = request['text']
  return 200 unless q.start_with? TRIGGER_WORD
  q = URI::encode q[TRIGGER_WORD.size..-1]
  url = 'http://www.urbandictionary.com/define.php?term=' + q
  reply = {username: 'QuickSlack', icon_emoji: ':qs:', text: url}
  return JSON.generate(reply)
end

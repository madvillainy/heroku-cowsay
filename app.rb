# require 'socket'
require 'sinatra'
require 'ruby_cowsay'
require 'fortune_gem'


get '/' do
  # "Hello, world"
  r = '<pre>'
  r += Cow.new.say(FortuneGem.give_fortune({:max_length => 80}))
  r += '</pre>'
end

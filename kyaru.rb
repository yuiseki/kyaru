require 'discordrb'
require 'yaml'

config = YAML.load_file("config.yml")

bot = Discordrb::Bot.new token: config['discord_token']

bot.message(with_text: 'kyaru') do |event|
  event.respond '殺すぞ……！？'
end

bot.run

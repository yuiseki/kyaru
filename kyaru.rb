require 'discordrb'
require 'yaml'

config = YAML.load_file("config.yml")

bot = Discordrb::Bot.new token: config['discord_token']

# kyaru という発言があったらそのチャンネルで 殺すぞ……！？ と発言する
bot.message(with_text: 'kyaru') do |event|
  event.respond '殺すぞ……！？'
end

bot.run

require './lib/bot.rb'

RSpec.describe 'Bot' do
  it 'Bot object can be created' do
    bot = Bot.new
    expect(bot).to be_an_instance_of(Bot)
  end
end
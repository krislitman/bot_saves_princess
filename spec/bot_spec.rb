require './lib/bot.rb'

RSpec.describe 'Bot' do
  it 'Bot object can be created' do
    bot = Bot.new
    expect(bot).to be_an_instance_of(Bot)
  end
  it 'Has a function #displayPathtoPrincess that takes #N and #arraygrid' do
    array_grid = ["---", "-m-", "p--"]
    expected = Bot.displayPathtoPrincess(3, array_grid)
    expect(expected).to eq("DOWN\nLEFT")
  end
end
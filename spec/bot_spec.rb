require './lib/bot.rb'

RSpec.describe 'Bot Spec' do
  it 'Bot object can be created' do
    bot = Bot.new
    expect(bot).to be_an_instance_of(Bot)
  end
  xit 'Has a function #displayPathtoPrincess that takes #N and #arraygrid' do
    array_grid = ["---", "-m-", "p--"]
    expected = Bot.displayPathtoPrincess(3, array_grid)
    expect(expected).to eq("DOWN\nLEFT")
  end
  it 'Can find the princess location' do
    array_grid = ["---", "-m-", "p--"]
    expected = Bot.find_location(array_grid, "p")
    expect(expected).to eq([2, 0])
  end
  it 'Can find the princess location in larger grid' do
    array_grid = ["-----", "--m--", "p----"]
    expected = Bot.find_location(array_grid, "p")
    expect(expected).to eq([2, 0])
  end
  it 'Can find the princess location in an even larger grid' do
    array_grid = ["-----", "-----", "--m--", "-----", "----p"]
    expected = Bot.find_location(array_grid, "p")
    expect(expected).to eq([4, 4])
  end
  it 'Can find mario location' do
    array_grid = ["---", "-m-", "p--"]
    expected = Bot.find_location(array_grid, "m")
    expect(expected).to eq([1, 1])
  end
  it 'Can traverse y-axis down and return correct string' do
    expected = Bot.traverse_yaxis(2, 1)
    expect(expected).to eq("DOWN\n")
  end
  it 'Can traverse y-axis up and return correct string' do
    expected = Bot.traverse_yaxis(0, 1)
    expect(expected).to eq("UP\n")
  end
end
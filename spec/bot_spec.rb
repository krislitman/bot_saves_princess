require './lib/bot.rb'

RSpec.describe 'Bot Spec' do
  it 'Bot object can be created' do
    bot = Bot.new
    expect(bot).to be_an_instance_of(Bot)
  end
  it 'Has a function #displayPathtoPrincess that takes #N and #arraygrid' do
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
    expected = Bot.traverse_axis(2, 1, {"one": "DOWN\n", "two": "UP\n"})
    expect(expected).to eq("DOWN\n")
  end
  it 'Can traverse y-axis down two and return correct string' do
    expected = Bot.traverse_axis(3, 1, {"one": "DOWN\n", "two": "UP\n"})
    expect(expected).to eq("DOWN\nDOWN\n")
  end
  it 'Can traverse y-axis up and return correct string' do
    expected = Bot.traverse_axis(0, 1, {"one": "DOWN\n", "two": "UP\n"})
    expect(expected).to eq("UP\n")
  end
  it 'Can traverse x-axis left and return correct string' do
    expected = Bot.traverse_axis(0, 1, {"one": "RIGHT\n", "two": "LEFT\n"})
    expect(expected).to eq("LEFT\n")
  end
  it 'Can traverse x-axis right and return correct string' do
    expected = Bot.traverse_axis(2, 1, {"one": "RIGHT\n", "two": "LEFT\n"})
    expect(expected).to eq("RIGHT\n")
  end
  it 'Has a function #displayPathtoPrincess that takes #N and #arraygrid' do
    array_grid = ["---", "-m-", "p--"]
    expected = Bot.displayPathtoPrincess(3, array_grid)
    expect(expected).to eq("DOWN\nLEFT")
  end
  it 'Can find the princess in a different position' do
    array_grid = ["-m-", "---", "p--"]
    expected = Bot.displayPathtoPrincess(3, array_grid)
    expect(expected).to eq("DOWN\nDOWN\nLEFT")
  end
  it 'Can find the princess in a third position' do
    array_grid = ["m--", "---", "--p"]
    expected = Bot.displayPathtoPrincess(3, array_grid)
    expect(expected).to eq("DOWN\nDOWN\nRIGHT\nRIGHT")
  end
end
class Bot

  def self.displayPathtoPrincess(int, grid)
    princess = find_location(grid, "p")
    mario = find_location(grid, "m")
    if princess[0] == mario[0]
      message_one = nil
    elsif princess[1] == mario[1]
      message_two = nil
    else
      message_one = traverse_axis(
        princess[0], mario[0], {"one": "DOWN\n", "two": "UP\n"}
      )
      message_two = traverse_axis(
        princess[1], mario[1], {"one": "RIGHT\n", "two": "LEFT\n"}
      )
    end
    format_message(message_one, message_two)
  end
  
  def self.format_message(one, two)
    if one.nil?
      two.slice! (-1)
      return two
    elsif two.nil?
      one.slice! (-1)
      return one
    else
      two.slice! (-1)
      return one + two
    end
  end
  
  def self.traverse_axis(p, m, axis)
    moves = (p - m)
    string = ""
    if moves > 0
      moves.times do 
        string = string + axis[:one]
      end
    else 
      moves = moves.abs
      moves.times do 
        string = string + axis[:two]
      end
    end
    return string
  end
  
  def self.find_location(grid, chr)
    found = nil
    grid.each_with_index do |ind, elem|
      if ind.include? chr
        ind.split("").each_with_index do |inde, eleme|
          if inde == chr
            found = [elem, eleme]
          else
            next
          end
        end
      else
        next
      end
    end
    return found
  end
end
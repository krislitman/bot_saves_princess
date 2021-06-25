class Bot
  def self.displayPathtoPrincess(int, grid)
    princess = find_location(grid, "p")
    mario = find_location(grid, "m")
    message_one = traverse_yaxis(princess[0], mario[0])
  end
  
  def self.traverse_yaxis(p, m)
    moves = (p - m)
    string = ""
    if moves > 0
      moves.times do 
        string = string + "DOWN\n"
      end
    else 
      moves = moves.abs
      moves.times do 
        string = string + "UP\n"
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
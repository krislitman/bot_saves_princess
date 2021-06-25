class Bot
  def self.displayPathtoPrincess(int, grid)
    princess = find_location(grid, "p")
    mario = find_location(grid, "m")
    require 'pry'; binding.pry
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
class Bot
  def self.displayPathtoPrincess(int, grid)
    princess = find_princess(grid)
    require 'pry'; binding.pry
  end
  
  def self.find_princess(grid)
    princess = nil
    grid.each_with_index do |ind, elem|
      if ind.include? "p"
        ind.split("").each_with_index do |inde, eleme|
          if inde == "p"
            princess = [elem, eleme]
          else
            next
          end
        end
      else
        next
      end
    end
    return princess
  end
end
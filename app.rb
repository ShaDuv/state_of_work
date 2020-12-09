require 'date'

weekday = 0
oregon = 0
washington = 0
triplet = 3

class Date
  def dayname
     DAYNAMES[self.wday]
  end

  def abbr_dayname
    ABBR_DAYNAMES[self.wday]
  end

  def is_weekend?
    self.saturday? || self.sunday?
  end
end



Date.new(2021, 01, 01).upto(Date.new(2021, 12, 31)) do |date|
        if triplet <=2
            unless date.is_weekend?
            oregon += 1
            weekday += 1
            triplet +1 < 6 ? triplet += 1 : triplet = 0
            end
        else 
            unless date.is_weekend?
            washington += 1
            weekday += 1
            triplet +1 < 6 ? triplet += 1 : triplet = 0
            end   
        end  
end
p "WA : #{washington}"
p "OR : #{oregon}"
p weekday


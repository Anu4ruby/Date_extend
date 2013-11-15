require 'date'

class Date
  class << self
    def year
      Date.today.year
    end
    
    def month
      Date.today.month
    end
    
    def first_wednesday(month, year = Date.year)
      day = Date.new(year, month, 1)
      day = day + ((3 - day.wday) % 7)
    end
    
    def last_wednesday(month, year = Date.year)
      day = Date.new(year, month, -1)
      day - ((4 + day.wday) % 7)
    end
    
    def second_saturday(month, year = Date.year)
      day = Date.new(year, month, 8)
      day = day + ((6 - day.wday) % 7)
    end
  end
    
end
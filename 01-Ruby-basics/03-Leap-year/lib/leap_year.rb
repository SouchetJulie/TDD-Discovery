require 'date'

def leap?(year)
  # TO DO: Write a method that takes a year and returns if it’s a leap year or not.
    if Date.leap?(year)
       puts y.to_s + 'is leap year'
       return true
      else  puts 'Argument  is not leap year.'
        return false
    end
  end


def big_leap(year)
  # TO DO: Let's improve the method above by adding some text.
    if Date.leap?(year)
      else  puts year.to_s + ' is not leap year. The next one is' + (year+1).to_s
    end
  end
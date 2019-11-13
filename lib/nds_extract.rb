$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'

def directors_totals(source)
  result = {}
  director_index = 0
  while director_index < source.size do
    director = source[director_index]
    result[director[:name]] = gross_for_director(director)
    director_index += 1
  end
  result
end







def gross_for_director(d)
  total = 0
  index = 0

  while index < d[:movies].length do
    total += d[:movies][index][:worldwide_gross]
    index += 1
  end

  total
end






def list_of_directors(source)
  result = []
  #puts source
  #sleep (2)
  i = 0 
  while i < source.length do
    result.push(source[i][:name])
    i +=1
  end
  #puts result
  #sleep(2)
  return result
  
  # Write this implementation
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  #
  # Visit each key (i.e. director name), look up the value in the hash
  # returned by directors_totals, and add it to a running total. When done,
  # return the total
  
  #puts source
  db = source
  
  totals = directors_totals(db)
  puts totals
  puts ""
  sleep(5)
  directors = list_of_directors(db)
  puts directors
  puts ""
  sleep(5)
  
  total = 0
  i = 0
  
  
  directors.each do |n|
    puts totals[n]
    total += totals[n]
  end
  
  puts total
  
  
  
  return total
  
  #db[0][:movies].each { |key,value| puts "#{value}------\n" }
  

end



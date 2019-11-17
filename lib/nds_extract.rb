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
  
  director_array = []
  director_index = 0
  
  while director_index < source.size do
    director_array << source[director_index][:name]
    director_index += 1
  end
  
  director_array
end

def total_gross(source)

 dir_totals = directors_totals(source)
 gross_total = dir_totals.values
 total = gross_total.sum
 
end



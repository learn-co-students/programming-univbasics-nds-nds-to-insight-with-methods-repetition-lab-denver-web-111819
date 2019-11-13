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
  list = []
  row_index = 0

  while row_index < source.length do
    list << source[row_index][:name]
  
    row_index += 1
  end

  list
end

def total_gross(source)
  # Write this implementation
  #
  # Should use methods:
  # 1. directors_totals: returns a Hash of { dir_name => gross }
  # 2. list_of_directors: names provides an Array of directors names (use
  names_with_totals = directors_totals(source)
  directors = list_of_directors(names_with_totals)
  gross = 0
  row_index = 0

  while row_index < directors.length do
    total += directors[row_index]
  
    row_index += 1
  end

  total
end



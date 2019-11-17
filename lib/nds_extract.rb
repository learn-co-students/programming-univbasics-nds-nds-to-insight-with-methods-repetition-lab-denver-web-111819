$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pp'
require 'pry'



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

# pp directors_totals(directors_database)
# binder.pry

def list_of_directors(source)
  dir_index=0
  list=[]
  while dir_index < source.length
    list[dir_index]=source[dir_index][:name]
    dir_index+=1
  end
  list
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
 total=0
 dir_ind=0
  while dir_ind<source.size do
    total+=gross_for_director(source[dir_ind])
    dir_ind+=1
  end
total
end



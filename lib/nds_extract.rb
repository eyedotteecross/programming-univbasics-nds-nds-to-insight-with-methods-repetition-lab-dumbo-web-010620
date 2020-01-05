$LOAD_PATH.unshift(File.dirname(__FILE__))
require_relative './directors_database'
require 'pry'

def gross_for_director(director_data)
i = 0
total = 0 
  while i < director_data[:movies].size 
  total += director_data[:movies][i][:worldwide_gross] 
  i += 1
  end   
  total 
  #binding.pry
end

def directors_totals(nds)
i = 0 
totals = {}
  while i < nds.size
  director = nds[i]
  totals[director[:name]] = gross_for_director(director)
  #binding.pry
  i += 1
  end 
totals
end 

def total_gross(nds)
grosses = directors_totals(nds) # hash w/ directors' grosses
grosses.values.reduce {|sum,director_gross| sum += director_gross}

#binding.pry 
end 



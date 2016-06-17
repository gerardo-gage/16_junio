#Anagramas
def canonical(word)
  word.split("").sort! 
end

def are_anagrams?(word1, word2)
	canonical(word1) == canonical(word2)
end

def anagrams_for(word, array)
  array.select do |wordi|
    are_anagrams?(word, wordi)
  end
end

anagrams_for("AMOR", ["ROMA", "JUAN", "FUTBOL","PERRO", "OMAR", "MORA"])
#=> ["ROMA", "OMAR", "MORA"]
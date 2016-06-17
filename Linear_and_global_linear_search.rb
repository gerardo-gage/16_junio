#Linear and global linear search
def linear_search(number, array)
  c = nil
  for i in 0...array.length
  	c = i if number == array[i]
  end
  c
end

random_numbers = [ 4, 3, 2, 20, 5, 64, 78, 11, 43 ]
p linear_search(20, random_numbers)
p linear_search(29, random_numbers)

def global_linear_search(element, array)
  resp = []
  for i in 0...array.length
    if  element == array[i]
     resp << i
    end
  end
  resp
end

arr = "entretenerse".split('')
p global_linear_search("e", arr)
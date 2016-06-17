#Fibonacci
def fibonacci_recursive(n)
  case 
  when n == 0
  	0
  when n == 1
  	1
  else
  	fibonacci_recursive(n - 1) + fibonacci_recursive(n - 2)
  end
end

def fibonacci_iterative(n)
  i = 0
  j = 1
  
  case
  when n == 0
  	i
  when (n ==1)
  	j
  else
    for m in 2..n
      r = j + i
      i = j
      j = r
    end
    r
  end
end

p fibonacci_iterative(0) == 0
p fibonacci_iterative(1) == 1
p fibonacci_iterative(2) == 1
p fibonacci_iterative(3) == 2
p fibonacci_iterative(4) == 3
p fibonacci_iterative(5) == 5

p fibonacci_recursive(0) == 0
p fibonacci_recursive(1) == 1
p fibonacci_recursive(2) == 1
p fibonacci_recursive(3) == 2
p fibonacci_recursive(4) == 3
p fibonacci_recursive(5) == 5


#Factorial
def factorial_recursive(n)
  case 
  when n < 0
  	puts "No se puede calcular el factorial de un negativo"
  when n == 0 
  	r = 1
  else 
   r = factorial_recursive(n-1) * n
  end
end

def factorial_iterative(n)
  case 
  when n < 0
  	puts "No se puede calcular el factorial de un negativo"
  when n == 0 
  	r = 1
  else
    r = 1
    for i in 2..n
   	  r *= i   
    end
    r
  end
end

p factorial_recursive(5) == factorial_iterative(5)
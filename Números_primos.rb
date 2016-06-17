#Números_primos
def is_prime?(number)
  case
  when number < 0
  	puts "El número debe ser positivo"
  when number > 0 && number < 2
  	true
  else
    (2...number).select{|n| number % n == 0}.count == 0
  end
end

def find_primes(number)
  (2..number).find_all{|n| is_prime?(n)}
end

def prime_factors(number)
  primes = find_primes(number)
  r = []
  i = 0
  while number != 1
    loop do 
      if number%primes[i] == 0
        r << primes[i]
        number = number/primes[i]
        break
      else 
        i = i + 1
      end
    end
  end
  r
end

p prime_factors(4) 
#=> [2, 2]
p prime_factors(9) 
#=> [3, 3]
p prime_factors(12) 
#=> [2, 2, 3]
p prime_factors(34) 
#=> [2, 17]



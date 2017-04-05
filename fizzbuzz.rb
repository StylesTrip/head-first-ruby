
def fizzbuzz(number)
  print "#{number}-"
  if number % 3 == 0 && number % 5 == 0
    print "fizzbuzz"
  elsif number % 3 == 0
    print "fizz"
  elsif number % 5 == 0
    print "buzz"
  end
  print "\n"
end

n = 1

while n <= 15
  fizzbuzz(n)
  n += 1
end

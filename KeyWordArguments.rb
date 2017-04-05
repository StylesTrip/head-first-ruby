def welcome(greeting: "Welcome", name: nil)
  puts "#{greeting}, #{name}"
end

welcome(greeting: "Hello", name: "Amy")

my_args = {greeting: "Sup", name: "Dawg"}
welcome(my_args)

def accelerate
  puts "Stepping on the gas"
  puts "Speeding up"
end

def sound_horn
  puts "Pressing the horn button"
  puts "Beep beep!"
end

def use_headlights(brightness = "low-beam")
  puts "Turning on #{brightness} headlights"
  puts "Watch out for deer!"
end

def mileage(miles_driven, gas_used)
  miles_driven / gas_used
end

puts mileage(400, 12)

sound_horn
accelerate
use_headlights
use_headlights("high-beam")

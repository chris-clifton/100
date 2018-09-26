# Write a method that takes one argument, the total number of switches, and returns an array that identifies which lights are on after n repetitions

# input: integer
# output: array
# rules:
  # all lights start OFF
  # number of lights ==  number of repetitions
  # the iteration number = light toggle frequency

  # algorithm
    # step 1: create a lights_hash variable to hold the lights
      # probably want a hash with n keys and a value of OFF
    # iterate over lights_hash n times
      # iteration based on n: every n light gets switched
        # switch_light = ON if OFF or OFF if ON 
    # return array of all lights in the ON position after last iteration


def initialize_lights(number_of_lights)
  lights = Hash.new
  1.upto(number_of_lights) { |number| lights[number] = 'OFF' }
  lights
end

def switch_light(lights, number)
  lights.each do |position, state|
    if position % number == 0
      lights[position] = (state == 'OFF' ? 'ON' : 'OFF')
    end
  end
end

def on_lights(lights)
  lights.select { |position, state| state == 'ON' }.keys
end

def off_lights(lights)
  lights.select { |position, state| state == 'OFF' }.keys
end

def string_output(on_array, off_array)
  on_string = ''
  off_string = ''
  on_array.each do |light|
    on_string << light.to_s
  end
    off_array.each do |light|
    off_string << light.to_s
  end
  puts "Lights #{on_string} are on; lights #{off_string} are off."
end

def thousand_lights(number_of_lights)
  lights = initialize_lights(number_of_lights)
  1.upto(number_of_lights) do |iteration_number|
    switch_light(lights, iteration_number)
  end    
  on_lights(lights)
  string_output(on_lights(lights), off_lights(lights))
end

p thousand_lights(1)
p thousand_lights(5)
p thousand_lights(10)
p thousand_lights(1000)

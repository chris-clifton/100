
def short_lights(n)
  lights = (1..n).to_a.map! { |x| x**2 }.select { |y| y <= n }
  lights
end

p short_lights(5)
p short_lights(10)
p short_lights(1000)
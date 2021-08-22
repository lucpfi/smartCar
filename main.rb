require 'senec'
require 'hs1xx'
charging = false

puts "Starting Collecting Infos..."

while true
    request = Senec::Request.new host: ENV.fetch('senec_host')
    plug = HS1xx::Plug.new(ENV.fetch('plug'))

    value = request.inverter_power - request.house_power
    carValue = value - ENV.fetch('min_power_overflow').to_i

    if value.negative?()
        puts "Stop charging Car."
        plug.off
        charging = false
    end

    if !carValue.negative?()
        puts "Starting charging."
        plug.on
        charging = true
    end

    puts "Dif of production and use: #{value} W"

    sleep(ENV.fetch('interval').to_i)
end

gpio.mode(4,gpio.OUTPUT,gpio.PULLUP)

pin = 4
function setHigh()
    gpio.write(pin, gpio.HIGH)
end

function setLow()
    gpio.write(pin, gpio.LOW)
end
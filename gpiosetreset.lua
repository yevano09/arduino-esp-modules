pin = 4
filename="state.txt"
gpio.mode(pin,gpio.OUTPUT,gpio.PULLUP)

function setHigh()
    setFileData(gpio.HIGH)
    gpio.write(pin, gpio.HIGH)
end

function setState(gpiostate)
    gpio.write(pin, tonumber(gpiostate))
end

function setLow()
    setFileData(gpio.LOW)
    gpio.write(pin, gpio.LOW)
end

function getFileData()
  file.open(filename)
  retval = file.read('\n')
  file.close()
  return retval
end

function setFileData(state)
   dest = file.open(filename,"w")
   dest:write(state)
   dest:close()
   dest = nil
end

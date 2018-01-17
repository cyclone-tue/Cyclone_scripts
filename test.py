from dronekit import connect, VehicleMode

# Connect to the Vehicle (in this case a UDP endpoint)
vehicle = connect('/dev/ttyS1', wait_ready=True)
print "Mode: %s" % vehicle.mode.name

# airmate_dustn

A package that publish `dust_density` topic from arduino board.(std_msgs/Float32)


## Installation

```
  mv [this_package] path/to/your_ws/src
  catkin_make
```

#### The code can be run in this way:

```
sudo chmod 666 /dev/ttyUSB0
roslaunch airmate_dust airmate_dust.launch
```


## Reference

- Documentation on wiki : http://wiki.ros.org/rosserial_arduino/Tutorials
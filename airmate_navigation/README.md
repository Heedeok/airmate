# airmate_navigation 

A package that will buffer `move_base` goals until instructed to navigate to all waypoints in sequence.

![airmate_navigation](readme_images/follow_waypoints_rviz.png "navigation")

## Installation

```
  mv [this_package] path/to/your_ws/src
```

#### The code can be run in this way:

```
rosrun airmate_navigation airmate_navigation.py
```

#### Following waypoints will save the list of poses to a file in the following directory:

```
follow_waypoints/saved_path/pose.csv
```

#### To load the previously save path:

```
rostopic pub /start_journey std_msgs/Empty -1
# In this package, the robot cannot move t onext path until the dust density falss below a certian level(default : 400 micro_gram/m^3)
```

![airmate_navigation](readme_images/follow_waypoint.gif "navigation")



## Reference

** Documentation on wiki: [http://wiki.ros.org/follow_waypoints](http://wiki.ros.org/follow_waypoints)**
** Fowllow waypoint pacakage - https://github.com/danielsnider/follow_waypoints
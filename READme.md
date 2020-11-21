# airmate(for melodic)

## Environment
- ubuntu : 18.04
- ROS : melodic
- python : 2.7

## Instal ROS(melodic)
#### ros.org
```
# install ros-melodic from ros.org
sudo apt-get update
```
#### install wstool and rosdep
```
sudo apt-get install -y python-wstool python-rosdep ninja-build stow
```

## PC setup
#### make workspace
```
mkdir -p catkin_ws/src
```

#### install dependent pacakges for Turtlebot3 control on remote PC
```
cd catkin_ws/src
git clone https://github.com/ROBOTIS-GIT/turtlebot3_msgs.git
git clone -b melodic-devel https://github.com/ROBOTIS-GIT/turtlebot3.git
```
#### install cartorgapher
```
cd catkin_ws
wstool init src
wstool merge -t src https://raw.githubusercontent.com/cartographer-project/cartographer_ros/master/cartographer_ros.rosinstall
wstool update -t src

# install cartographer_ros dependencies
rosdep update
rosdep install --from-paths src --ignore-src --rosdistro=${ROS_DISTRO} -y

# install abseill-cpp library for cartographer
src/cartographer/scripts/install_abseil.sh
```
#### install follow waypoint
```
cd catkin_ws/src
git clone https://github.com/danielsnider/follow_waypoints.git
```
#### build and install
```
catkin_make_isolated --install --use-ninja
```

## Usage
#### start master node
```
roscore
```
#### run cartographer
```
roslaunch turtlebot3_slam turtlebot3_slam.launch slam_methods:=cartographer configuration_basename:=turtlebot3_lds_2d_gazebo.lua
#if you executing ratographer on real environment, change the configuration_basename to :=turtlebot3_lds_2d.lua)
```

#### run airmate_navigation
```
rosrun airmate_navigation airmate_navigation.py

# create waypoints
Use RViz’s "2D Pose Estimate" tool to create waypoints with mouse clicks.
Or use application's '이동정화 모드'

# executing '이동정화 모드'
rostopic pub /path_ready std_msgs/Empty -1

# to clear waypoint queue
rostopic pub /path_reset std_msgs/Empty -1
```

### Reference
- Indrotuction youtube : https://youtu.be/Nz0BxnbTmKo


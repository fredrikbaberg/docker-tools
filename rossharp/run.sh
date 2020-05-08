#!/bin/bash
set -e
source "/opt/ros/$ROS_DISTRO/setup.bash"
cd $HOME/catkin_ws/src && catkin_init_workspace
cd $HOME/catkin_ws && catkin_make
source devel/setup.bash
roslaunch file_server ros_sharp_communication.launch

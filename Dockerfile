FROM osrf/ros:humble-desktop

RUN apt-get update && apt-get install libglm-dev \
  ros-humble-gazebo-ros2-control \
  ros-humble-joint-state-broadcaster \
  ros-humble-joint-trajectory-controller \
  ros-humble-forward-command-controller \
  ros-humble-xacro 

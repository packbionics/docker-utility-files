FROM osrf/ros:humble-desktop

# Install software dependencies
RUN apt-get update && apt-get install libglm-dev \
  ros-humble-gazebo-ros2-control \
  ros-humble-joint-state-broadcaster \
  ros-humble-joint-trajectory-controller \
  ros-humble-forward-command-controller \
  ros-humble-xacro \
  ros-humble-rmw-cyclonedds-cpp -y

ENV RMW_IMPLEMENTATION=rmw_cyclonedds_cpp
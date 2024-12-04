FROM osrf/ros:humble-desktop

ARG DEV_WS=/home/packbionics/
ENV RMW_IMPLEMENTATION=rmw_cyclonedds_cpp

# Download source code
COPY src ${DEV_WS}/src
RUN . /opt/ros/humble/setup.sh && sudo apt-get update

# Download ROS dependencies
WORKDIR ${DEV_WS}
RUN . /opt/ros/humble/setup.sh && rosdep install -y -i --from-path src --rosdistro humble

# Install CycloneDDS
RUN apt-get install -y ros-humble-rmw-cyclonedds-cpp

# Remove the temporary dev workspace after installing dependencies
RUN rm -rf ${DEV_WS}/src

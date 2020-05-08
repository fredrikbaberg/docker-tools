FROM ros:kinetic-ros-core

RUN apt update && apt install -y ros-kinetic-rosbridge-server && apt clean && rm -rf /var/lib/apt/lists/*
RUN mkdir -p $HOME/catkin_ws/src && cd $HOME/catkin_ws/src
RUN git clone https://github.com/siemens/ros-sharp.git /tmp/ros-sharp && mv /tmp/ros-sharp/ROS/ $HOME/catkin_ws/src/ROSSHARP && rm -rf /tmp/*
COPY run.sh .
RUN chmod a+x run.sh
CMD [ "./run.sh" ]
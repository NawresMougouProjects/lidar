cmake_minimum_required(VERSION 2.8.3)
project(lslidar_ch128x1_msgs)

find_package(catkin REQUIRED COMPONENTS
  message_generation
  std_msgs
  sensor_msgs
)

add_message_files(
  DIRECTORY msg
  FILES
  LslidarChLayer.msg
  LslidarChPacket.msg
  LslidarChPoint.msg
  LslidarChScan.msg
  LslidarChSweep.msg
  LslidarChScanUnified.msg
)
generate_messages(DEPENDENCIES std_msgs sensor_msgs)

catkin_package(
  CATKIN_DEPENDS message_runtime std_msgs sensor_msgs
)

# Install script for directory: /home/nawres/lidar_ws/src/lslidar_ch128x1/lslidar_ch128x1_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/nawres/lidar_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

# Set default install directory permissions.
if(NOT DEFINED CMAKE_OBJDUMP)
  set(CMAKE_OBJDUMP "/usr/bin/objdump")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_ch128x1_msgs/msg" TYPE FILE FILES
    "/home/nawres/lidar_ws/src/lslidar_ch128x1/lslidar_ch128x1_msgs/msg/LslidarChLayer.msg"
    "/home/nawres/lidar_ws/src/lslidar_ch128x1/lslidar_ch128x1_msgs/msg/LslidarChPacket.msg"
    "/home/nawres/lidar_ws/src/lslidar_ch128x1/lslidar_ch128x1_msgs/msg/LslidarChPoint.msg"
    "/home/nawres/lidar_ws/src/lslidar_ch128x1/lslidar_ch128x1_msgs/msg/LslidarChScan.msg"
    "/home/nawres/lidar_ws/src/lslidar_ch128x1/lslidar_ch128x1_msgs/msg/LslidarChSweep.msg"
    "/home/nawres/lidar_ws/src/lslidar_ch128x1/lslidar_ch128x1_msgs/msg/LslidarChScanUnified.msg"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_ch128x1_msgs/cmake" TYPE FILE FILES "/home/nawres/lidar_ws/build/lslidar_ch128x1/lslidar_ch128x1_msgs/catkin_generated/installspace/lslidar_ch128x1_msgs-msg-paths.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/nawres/lidar_ws/devel/include/lslidar_ch128x1_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/nawres/lidar_ws/devel/share/roseus/ros/lslidar_ch128x1_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/nawres/lidar_ws/devel/share/common-lisp/ros/lslidar_ch128x1_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/nawres/lidar_ws/devel/share/gennodejs/ros/lslidar_ch128x1_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/nawres/lidar_ws/devel/lib/python3/dist-packages/lslidar_ch128x1_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/nawres/lidar_ws/devel/lib/python3/dist-packages/lslidar_ch128x1_msgs")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/nawres/lidar_ws/build/lslidar_ch128x1/lslidar_ch128x1_msgs/catkin_generated/installspace/lslidar_ch128x1_msgs.pc")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_ch128x1_msgs/cmake" TYPE FILE FILES "/home/nawres/lidar_ws/build/lslidar_ch128x1/lslidar_ch128x1_msgs/catkin_generated/installspace/lslidar_ch128x1_msgs-msg-extras.cmake")
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_ch128x1_msgs/cmake" TYPE FILE FILES
    "/home/nawres/lidar_ws/build/lslidar_ch128x1/lslidar_ch128x1_msgs/catkin_generated/installspace/lslidar_ch128x1_msgsConfig.cmake"
    "/home/nawres/lidar_ws/build/lslidar_ch128x1/lslidar_ch128x1_msgs/catkin_generated/installspace/lslidar_ch128x1_msgsConfig-version.cmake"
    )
endif()

if(CMAKE_INSTALL_COMPONENT STREQUAL "Unspecified" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/lslidar_ch128x1_msgs" TYPE FILE FILES "/home/nawres/lidar_ws/src/lslidar_ch128x1/lslidar_ch128x1_msgs/package.xml")
endif()


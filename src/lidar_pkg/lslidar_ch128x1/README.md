# lslidar_ch
#version v1.0.4_211026

## version track
Author: leo

### ver1.0.0 leo

## Description
The `lslidar_ch` package is a linux ROS driver for lslidar ch.
The package is tested on Ubuntu 16.04 with ROS kinetic.

## Compling
This is a Catkin package. Make sure the package is on `ROS_PACKAGE_PATH` after cloning the package to your workspace. And the normal procedure for compling a catkin package will work.

```
cd your_work_space
catkin_make 
```

## Example Usage

### lslidar_ch_decoder

**Parameters**

`lidar_ip` (`string`, `default: 192.168.1.200`)

By default, the IP address of the device is 192.168.1.200.

`frame_id` (`string`, `default: laser_link`)

The frame ID entry for the sent messages.

**Published Topics**

`lslidar_point_cloud`

Each message corresponds to a lslidar packet sent by the device through the Ethernet.

### lslidar_ch_decoder

**Parameters**

`min_range` (`double`, `0.3`)

`max_range` (`double`, 200.0`)

Points outside this range will be removed.

`frequency` (`frequency`, `10.0`)

Note that the driver does not change the frequency of the sensor. 

`publish_point_cloud` (`bool`, `true`)

If set to true, the decoder will additionally send out a local point cloud consisting of the points in each revolution.

**Published Topics**

`lslidar_sweep` (`lslidar_ch_msgs/LslidarChSweep`)

The message arranges the points within each sweep based on its scan index and azimuth.

`lslidar_point_cloud` (`sensor_msgs/PointCloud2`)

This is only published when the `publish_point_cloud` is set to `true` in the launch file.

**Node**

```
roslaunch lslidar_ch_decoder lslidar_ch.launch --screen
```

Note that this launch file launches both the driver and the decoder, which is the only launch file needed to be used.


## FAQ


## Bug Report

/***********2021-04-15****************/
Original version : LSLIDAR_CH128X1_V1.0.1_210415_ROS

	luanch文件说明: 
	<param name="channel_num" value="8"/> //通道选择0-127
	<param name="publish_point_cloud" value="true"/> //是否发布所有通道点云
	<param name="publish_channel" value="false"/> //是否发布单通道点云 ，若选择发布则置为true。

查看单通道点云rviz设置：rviz的pointcloud2 的topic 选择/channel_pub_topic。

Date			 : 2021-04-15



/***********2021-06-24****************/
Original version : LSLIDAR_CH128X1_V1.0.1_210415_ROS

Revised version  :LSLIDAR_CH128X1_V1.0.2_210624_ROS

Modify:  根据协议，更新了时间戳的解析。

Date			 : 2021-06-24

/***********2021-07-14****************/
Original version :LSLIDAR_CH128X1_V1.0.2_210624_ROS

Revised version  :LSLIDAR_CH128X1_V1.0.3_210714_ROS

Modify:  根据新协议，棱镜角度从设备包获取解析；同时兼容旧协议。

Date			 : 2021-07-14





/***********2021-10-26****************/
Original version :LSLIDAR_CH128X1_V1.0.3_210714_ROS

Revised version  :LSLIDAR_CH128X1_V1.0.4_211026_ROS

Modify:  根据新的xyz计算公式，更新ros。

Date			 : 2021-10-26
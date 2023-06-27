// Generated by gencpp from file lslidar_ch128x1_msgs/LslidarChPoint.msg
// DO NOT EDIT!


#ifndef LSLIDAR_CH128X1_MSGS_MESSAGE_LSLIDARCHPOINT_H
#define LSLIDAR_CH128X1_MSGS_MESSAGE_LSLIDARCHPOINT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace lslidar_ch128x1_msgs
{
template <class ContainerAllocator>
struct LslidarChPoint_
{
  typedef LslidarChPoint_<ContainerAllocator> Type;

  LslidarChPoint_()
    : time(0.0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , vertical_angle(0.0)
    , azimuth(0.0)
    , distance(0.0)
    , intensity(0.0)
    , line(0)  {
    }
  LslidarChPoint_(const ContainerAllocator& _alloc)
    : time(0.0)
    , x(0.0)
    , y(0.0)
    , z(0.0)
    , vertical_angle(0.0)
    , azimuth(0.0)
    , distance(0.0)
    , intensity(0.0)
    , line(0)  {
  (void)_alloc;
    }



   typedef double _time_type;
  _time_type time;

   typedef double _x_type;
  _x_type x;

   typedef double _y_type;
  _y_type y;

   typedef double _z_type;
  _z_type z;

   typedef double _vertical_angle_type;
  _vertical_angle_type vertical_angle;

   typedef double _azimuth_type;
  _azimuth_type azimuth;

   typedef double _distance_type;
  _distance_type distance;

   typedef double _intensity_type;
  _intensity_type intensity;

   typedef uint16_t _line_type;
  _line_type line;





  typedef boost::shared_ptr< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> const> ConstPtr;

}; // struct LslidarChPoint_

typedef ::lslidar_ch128x1_msgs::LslidarChPoint_<std::allocator<void> > LslidarChPoint;

typedef boost::shared_ptr< ::lslidar_ch128x1_msgs::LslidarChPoint > LslidarChPointPtr;
typedef boost::shared_ptr< ::lslidar_ch128x1_msgs::LslidarChPoint const> LslidarChPointConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator1> & lhs, const ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator2> & rhs)
{
  return lhs.time == rhs.time &&
    lhs.x == rhs.x &&
    lhs.y == rhs.y &&
    lhs.z == rhs.z &&
    lhs.vertical_angle == rhs.vertical_angle &&
    lhs.azimuth == rhs.azimuth &&
    lhs.distance == rhs.distance &&
    lhs.intensity == rhs.intensity &&
    lhs.line == rhs.line;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator1> & lhs, const ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lslidar_ch128x1_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "fc3708e731a972c688afc860a855a663";
  }

  static const char* value(const ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xfc3708e731a972c6ULL;
  static const uint64_t static_value2 = 0x88afc860a855a663ULL;
};

template<class ContainerAllocator>
struct DataType< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lslidar_ch128x1_msgs/LslidarChPoint";
  }

  static const char* value(const ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Time when the point is captured\n"
"float64 time\n"
"\n"
"# Converted distance in the sensor frame\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"# Raw measurement from Leishen Ch\n"
"float64 vertical_angle\n"
"float64 azimuth\n"
"float64 distance\n"
"float64 intensity\n"
"uint16  line\n"
;
  }

  static const char* value(const ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time);
      stream.next(m.x);
      stream.next(m.y);
      stream.next(m.z);
      stream.next(m.vertical_angle);
      stream.next(m.azimuth);
      stream.next(m.distance);
      stream.next(m.intensity);
      stream.next(m.line);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LslidarChPoint_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lslidar_ch128x1_msgs::LslidarChPoint_<ContainerAllocator>& v)
  {
    s << indent << "time: ";
    Printer<double>::stream(s, indent + "  ", v.time);
    s << indent << "x: ";
    Printer<double>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<double>::stream(s, indent + "  ", v.y);
    s << indent << "z: ";
    Printer<double>::stream(s, indent + "  ", v.z);
    s << indent << "vertical_angle: ";
    Printer<double>::stream(s, indent + "  ", v.vertical_angle);
    s << indent << "azimuth: ";
    Printer<double>::stream(s, indent + "  ", v.azimuth);
    s << indent << "distance: ";
    Printer<double>::stream(s, indent + "  ", v.distance);
    s << indent << "intensity: ";
    Printer<double>::stream(s, indent + "  ", v.intensity);
    s << indent << "line: ";
    Printer<uint16_t>::stream(s, indent + "  ", v.line);
  }
};

} // namespace message_operations
} // namespace ros

#endif // LSLIDAR_CH128X1_MSGS_MESSAGE_LSLIDARCHPOINT_H

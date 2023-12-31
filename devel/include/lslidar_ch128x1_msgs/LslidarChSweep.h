// Generated by gencpp from file lslidar_ch128x1_msgs/LslidarChSweep.msg
// DO NOT EDIT!


#ifndef LSLIDAR_CH128X1_MSGS_MESSAGE_LSLIDARCHSWEEP_H
#define LSLIDAR_CH128X1_MSGS_MESSAGE_LSLIDARCHSWEEP_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <lslidar_ch128x1_msgs/LslidarChScan.h>

namespace lslidar_ch128x1_msgs
{
template <class ContainerAllocator>
struct LslidarChSweep_
{
  typedef LslidarChSweep_<ContainerAllocator> Type;

  LslidarChSweep_()
    : header()
    , scans()  {
    }
  LslidarChSweep_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , scans()  {
  (void)_alloc;
      scans.assign( ::lslidar_ch128x1_msgs::LslidarChScan_<ContainerAllocator> (_alloc));
  }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef boost::array< ::lslidar_ch128x1_msgs::LslidarChScan_<ContainerAllocator> , 128>  _scans_type;
  _scans_type scans;





  typedef boost::shared_ptr< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> const> ConstPtr;

}; // struct LslidarChSweep_

typedef ::lslidar_ch128x1_msgs::LslidarChSweep_<std::allocator<void> > LslidarChSweep;

typedef boost::shared_ptr< ::lslidar_ch128x1_msgs::LslidarChSweep > LslidarChSweepPtr;
typedef boost::shared_ptr< ::lslidar_ch128x1_msgs::LslidarChSweep const> LslidarChSweepConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator1> & lhs, const ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.scans == rhs.scans;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator1> & lhs, const ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace lslidar_ch128x1_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d1a64ad0a06f12d1697fe4e5561a8294";
  }

  static const char* value(const ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd1a64ad0a06f12d1ULL;
  static const uint64_t static_value2 = 0x697fe4e5561a8294ULL;
};

template<class ContainerAllocator>
struct DataType< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> >
{
  static const char* value()
  {
    return "lslidar_ch128x1_msgs/LslidarChSweep";
  }

  static const char* value(const ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> >
{
  static const char* value()
  {
    return "Header header\n"
"\n"
"# The 0th scan is at the bottom\n"
"LslidarChScan[128] scans\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: lslidar_ch128x1_msgs/LslidarChScan\n"
"# Altitude of all the points within this scan\n"
"float64 altitude\n"
"\n"
"# The valid points in this scan sorted by azimuth\n"
"# from 0 to 359.99\n"
"LslidarChPoint[] points\n"
"\n"
"================================================================================\n"
"MSG: lslidar_ch128x1_msgs/LslidarChPoint\n"
"# Time when the point is captured\n"
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

  static const char* value(const ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.scans);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LslidarChSweep_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::lslidar_ch128x1_msgs::LslidarChSweep_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "scans[]" << std::endl;
    for (size_t i = 0; i < v.scans.size(); ++i)
    {
      s << indent << "  scans[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::lslidar_ch128x1_msgs::LslidarChScan_<ContainerAllocator> >::stream(s, indent + "    ", v.scans[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // LSLIDAR_CH128X1_MSGS_MESSAGE_LSLIDARCHSWEEP_H

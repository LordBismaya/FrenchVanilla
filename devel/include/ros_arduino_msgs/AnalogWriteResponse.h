// Generated by gencpp from file ros_arduino_msgs/AnalogWriteResponse.msg
// DO NOT EDIT!


#ifndef ROS_ARDUINO_MSGS_MESSAGE_ANALOGWRITERESPONSE_H
#define ROS_ARDUINO_MSGS_MESSAGE_ANALOGWRITERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace ros_arduino_msgs
{
template <class ContainerAllocator>
struct AnalogWriteResponse_
{
  typedef AnalogWriteResponse_<ContainerAllocator> Type;

  AnalogWriteResponse_()
    {
    }
  AnalogWriteResponse_(const ContainerAllocator& _alloc)
    {
    }






  typedef boost::shared_ptr< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> const> ConstPtr;

}; // struct AnalogWriteResponse_

typedef ::ros_arduino_msgs::AnalogWriteResponse_<std::allocator<void> > AnalogWriteResponse;

typedef boost::shared_ptr< ::ros_arduino_msgs::AnalogWriteResponse > AnalogWriteResponsePtr;
typedef boost::shared_ptr< ::ros_arduino_msgs::AnalogWriteResponse const> AnalogWriteResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace ros_arduino_msgs

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/indigo/share/std_msgs/cmake/../msg'], 'ros_arduino_msgs': ['/home/bismaya/catkin_ws/src/ros_arduino_bridge/ros_arduino_msgs/msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "d41d8cd98f00b204e9800998ecf8427e";
  }

  static const char* value(const ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xd41d8cd98f00b204ULL;
  static const uint64_t static_value2 = 0xe9800998ecf8427eULL;
};

template<class ContainerAllocator>
struct DataType< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "ros_arduino_msgs/AnalogWriteResponse";
  }

  static const char* value(const ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "\n\
";
  }

  static const char* value(const ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream&, T)
    {}

    ROS_DECLARE_ALLINONE_SERIALIZER;
  }; // struct AnalogWriteResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream&, const std::string&, const ::ros_arduino_msgs::AnalogWriteResponse_<ContainerAllocator>&)
  {}
};

} // namespace message_operations
} // namespace ros

#endif // ROS_ARDUINO_MSGS_MESSAGE_ANALOGWRITERESPONSE_H

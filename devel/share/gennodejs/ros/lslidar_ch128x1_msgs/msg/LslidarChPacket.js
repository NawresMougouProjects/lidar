// Auto-generated. Do not edit!

// (in-package lslidar_ch128x1_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LslidarChPacket {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.stamp = null;
      this.prism_angle = null;
      this.data = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('stamp')) {
        this.stamp = initObj.stamp
      }
      else {
        this.stamp = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('prism_angle')) {
        this.prism_angle = initObj.prism_angle
      }
      else {
        this.prism_angle = new Array(4).fill(0);
      }
      if (initObj.hasOwnProperty('data')) {
        this.data = initObj.data
      }
      else {
        this.data = new Array(1206).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LslidarChPacket
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [stamp]
    bufferOffset = _serializer.time(obj.stamp, buffer, bufferOffset);
    // Check that the constant length array field [prism_angle] has the right length
    if (obj.prism_angle.length !== 4) {
      throw new Error('Unable to serialize array field prism_angle - length must be 4')
    }
    // Serialize message field [prism_angle]
    bufferOffset = _arraySerializer.float64(obj.prism_angle, buffer, bufferOffset, 4);
    // Check that the constant length array field [data] has the right length
    if (obj.data.length !== 1206) {
      throw new Error('Unable to serialize array field data - length must be 1206')
    }
    // Serialize message field [data]
    bufferOffset = _arraySerializer.uint8(obj.data, buffer, bufferOffset, 1206);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LslidarChPacket
    let len;
    let data = new LslidarChPacket(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [stamp]
    data.stamp = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [prism_angle]
    data.prism_angle = _arrayDeserializer.float64(buffer, bufferOffset, 4)
    // Deserialize message field [data]
    data.data = _arrayDeserializer.uint8(buffer, bufferOffset, 1206)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    return length + 1246;
  }

  static datatype() {
    // Returns string type for a message object
    return 'lslidar_ch128x1_msgs/LslidarChPacket';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '46a5102a4c7b30d8a4c3b7d1335f1bb1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Raw Leishen LIDAR packet.
    
    Header header           #standard ros message header
    time stamp 
    float64[4] prism_angle              # prism angle
    uint8[1206] data        # packet contents
    
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LslidarChPacket(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.stamp !== undefined) {
      resolved.stamp = msg.stamp;
    }
    else {
      resolved.stamp = {secs: 0, nsecs: 0}
    }

    if (msg.prism_angle !== undefined) {
      resolved.prism_angle = msg.prism_angle;
    }
    else {
      resolved.prism_angle = new Array(4).fill(0)
    }

    if (msg.data !== undefined) {
      resolved.data = msg.data;
    }
    else {
      resolved.data = new Array(1206).fill(0)
    }

    return resolved;
    }
};

module.exports = LslidarChPacket;

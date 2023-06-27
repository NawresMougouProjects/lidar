; Auto-generated. Do not edit!


(cl:in-package lslidar_ch128x1_msgs-msg)


;//! \htmlinclude LslidarChPacket.msg.html

(cl:defclass <LslidarChPacket> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (prism_angle
    :reader prism_angle
    :initarg :prism_angle
    :type (cl:vector cl:float)
   :initform (cl:make-array 4 :element-type 'cl:float :initial-element 0.0))
   (data
    :reader data
    :initarg :data
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 1206 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass LslidarChPacket (<LslidarChPacket>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LslidarChPacket>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LslidarChPacket)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name lslidar_ch128x1_msgs-msg:<LslidarChPacket> is deprecated: use lslidar_ch128x1_msgs-msg:LslidarChPacket instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LslidarChPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch128x1_msgs-msg:header-val is deprecated.  Use lslidar_ch128x1_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <LslidarChPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch128x1_msgs-msg:stamp-val is deprecated.  Use lslidar_ch128x1_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'prism_angle-val :lambda-list '(m))
(cl:defmethod prism_angle-val ((m <LslidarChPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch128x1_msgs-msg:prism_angle-val is deprecated.  Use lslidar_ch128x1_msgs-msg:prism_angle instead.")
  (prism_angle m))

(cl:ensure-generic-function 'data-val :lambda-list '(m))
(cl:defmethod data-val ((m <LslidarChPacket>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader lslidar_ch128x1_msgs-msg:data-val is deprecated.  Use lslidar_ch128x1_msgs-msg:data instead.")
  (data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LslidarChPacket>) ostream)
  "Serializes a message object of type '<LslidarChPacket>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'prism_angle))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LslidarChPacket>) istream)
  "Deserializes a message object of type '<LslidarChPacket>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:setf (cl:slot-value msg 'prism_angle) (cl:make-array 4))
  (cl:let ((vals (cl:slot-value msg 'prism_angle)))
    (cl:dotimes (i 4)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'data) (cl:make-array 1206))
  (cl:let ((vals (cl:slot-value msg 'data)))
    (cl:dotimes (i 1206)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LslidarChPacket>)))
  "Returns string type for a message object of type '<LslidarChPacket>"
  "lslidar_ch128x1_msgs/LslidarChPacket")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LslidarChPacket)))
  "Returns string type for a message object of type 'LslidarChPacket"
  "lslidar_ch128x1_msgs/LslidarChPacket")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LslidarChPacket>)))
  "Returns md5sum for a message object of type '<LslidarChPacket>"
  "46a5102a4c7b30d8a4c3b7d1335f1bb1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LslidarChPacket)))
  "Returns md5sum for a message object of type 'LslidarChPacket"
  "46a5102a4c7b30d8a4c3b7d1335f1bb1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LslidarChPacket>)))
  "Returns full string definition for message of type '<LslidarChPacket>"
  (cl:format cl:nil "# Raw Leishen LIDAR packet.~%~%Header header           #standard ros message header~%time stamp ~%float64[4] prism_angle              # prism angle~%uint8[1206] data        # packet contents~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LslidarChPacket)))
  "Returns full string definition for message of type 'LslidarChPacket"
  (cl:format cl:nil "# Raw Leishen LIDAR packet.~%~%Header header           #standard ros message header~%time stamp ~%float64[4] prism_angle              # prism angle~%uint8[1206] data        # packet contents~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LslidarChPacket>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'prism_angle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LslidarChPacket>))
  "Converts a ROS message object to a list"
  (cl:list 'LslidarChPacket
    (cl:cons ':header (header msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':prism_angle (prism_angle msg))
    (cl:cons ':data (data msg))
))

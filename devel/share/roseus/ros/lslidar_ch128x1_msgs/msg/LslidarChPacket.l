;; Auto-generated. Do not edit!


(when (boundp 'lslidar_ch128x1_msgs::LslidarChPacket)
  (if (not (find-package "LSLIDAR_CH128X1_MSGS"))
    (make-package "LSLIDAR_CH128X1_MSGS"))
  (shadow 'LslidarChPacket (find-package "LSLIDAR_CH128X1_MSGS")))
(unless (find-package "LSLIDAR_CH128X1_MSGS::LSLIDARCHPACKET")
  (make-package "LSLIDAR_CH128X1_MSGS::LSLIDARCHPACKET"))

(in-package "ROS")
;;//! \htmlinclude LslidarChPacket.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass lslidar_ch128x1_msgs::LslidarChPacket
  :super ros::object
  :slots (_header _stamp _prism_angle _data ))

(defmethod lslidar_ch128x1_msgs::LslidarChPacket
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:stamp __stamp) (instance ros::time :init))
    ((:prism_angle __prism_angle) (make-array 4 :initial-element 0.0 :element-type :float))
    ((:data __data) (make-array 1206 :initial-element 0 :element-type :char))
    )
   (send-super :init)
   (setq _header __header)
   (setq _stamp __stamp)
   (setq _prism_angle __prism_angle)
   (setq _data __data)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:stamp
   (&optional __stamp)
   (if __stamp (setq _stamp __stamp)) _stamp)
  (:prism_angle
   (&optional __prism_angle)
   (if __prism_angle (setq _prism_angle __prism_angle)) _prism_angle)
  (:data
   (&optional __data)
   (if __data (setq _data __data)) _data)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; time _stamp
    8
    ;; float64[4] _prism_angle
    (* 8    4)
    ;; uint8[1206] _data
    (* 1    1206)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; time _stamp
       (write-long (send _stamp :sec) s) (write-long (send _stamp :nsec) s)
     ;; float64[4] _prism_angle
     (dotimes (i 4)
       (sys::poke (elt _prism_angle i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; uint8[1206] _data
     (princ _data s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; time _stamp
     (send _stamp :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _stamp :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float64[4] _prism_angle
   (dotimes (i (length _prism_angle))
     (setf (elt _prism_angle i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     )
   ;; uint8[1206] _data
   (setq _data (make-array 1206 :element-type :char))
   (replace _data buf :start2 ptr-) (incf ptr- 1206)
   ;;
   self)
  )

(setf (get lslidar_ch128x1_msgs::LslidarChPacket :md5sum-) "46a5102a4c7b30d8a4c3b7d1335f1bb1")
(setf (get lslidar_ch128x1_msgs::LslidarChPacket :datatype-) "lslidar_ch128x1_msgs/LslidarChPacket")
(setf (get lslidar_ch128x1_msgs::LslidarChPacket :definition-)
      "# Raw Leishen LIDAR packet.

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

")



(provide :lslidar_ch128x1_msgs/LslidarChPacket "46a5102a4c7b30d8a4c3b7d1335f1bb1")



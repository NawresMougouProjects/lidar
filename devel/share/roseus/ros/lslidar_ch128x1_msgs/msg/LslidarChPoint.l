;; Auto-generated. Do not edit!


(when (boundp 'lslidar_ch128x1_msgs::LslidarChPoint)
  (if (not (find-package "LSLIDAR_CH128X1_MSGS"))
    (make-package "LSLIDAR_CH128X1_MSGS"))
  (shadow 'LslidarChPoint (find-package "LSLIDAR_CH128X1_MSGS")))
(unless (find-package "LSLIDAR_CH128X1_MSGS::LSLIDARCHPOINT")
  (make-package "LSLIDAR_CH128X1_MSGS::LSLIDARCHPOINT"))

(in-package "ROS")
;;//! \htmlinclude LslidarChPoint.msg.html


(defclass lslidar_ch128x1_msgs::LslidarChPoint
  :super ros::object
  :slots (_time _x _y _z _vertical_angle _azimuth _distance _intensity _line ))

(defmethod lslidar_ch128x1_msgs::LslidarChPoint
  (:init
   (&key
    ((:time __time) 0.0)
    ((:x __x) 0.0)
    ((:y __y) 0.0)
    ((:z __z) 0.0)
    ((:vertical_angle __vertical_angle) 0.0)
    ((:azimuth __azimuth) 0.0)
    ((:distance __distance) 0.0)
    ((:intensity __intensity) 0.0)
    ((:line __line) 0)
    )
   (send-super :init)
   (setq _time (float __time))
   (setq _x (float __x))
   (setq _y (float __y))
   (setq _z (float __z))
   (setq _vertical_angle (float __vertical_angle))
   (setq _azimuth (float __azimuth))
   (setq _distance (float __distance))
   (setq _intensity (float __intensity))
   (setq _line (round __line))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:x
   (&optional __x)
   (if __x (setq _x __x)) _x)
  (:y
   (&optional __y)
   (if __y (setq _y __y)) _y)
  (:z
   (&optional __z)
   (if __z (setq _z __z)) _z)
  (:vertical_angle
   (&optional __vertical_angle)
   (if __vertical_angle (setq _vertical_angle __vertical_angle)) _vertical_angle)
  (:azimuth
   (&optional __azimuth)
   (if __azimuth (setq _azimuth __azimuth)) _azimuth)
  (:distance
   (&optional __distance)
   (if __distance (setq _distance __distance)) _distance)
  (:intensity
   (&optional __intensity)
   (if __intensity (setq _intensity __intensity)) _intensity)
  (:line
   (&optional __line)
   (if __line (setq _line __line)) _line)
  (:serialization-length
   ()
   (+
    ;; float64 _time
    8
    ;; float64 _x
    8
    ;; float64 _y
    8
    ;; float64 _z
    8
    ;; float64 _vertical_angle
    8
    ;; float64 _azimuth
    8
    ;; float64 _distance
    8
    ;; float64 _intensity
    8
    ;; uint16 _line
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _time
       (sys::poke _time (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _x
       (sys::poke _x (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _y
       (sys::poke _y (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _z
       (sys::poke _z (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _vertical_angle
       (sys::poke _vertical_angle (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _azimuth
       (sys::poke _azimuth (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _distance
       (sys::poke _distance (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _intensity
       (sys::poke _intensity (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; uint16 _line
       (write-word _line s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _time
     (setq _time (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _x
     (setq _x (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _y
     (setq _y (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _z
     (setq _z (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _vertical_angle
     (setq _vertical_angle (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _azimuth
     (setq _azimuth (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _distance
     (setq _distance (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _intensity
     (setq _intensity (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; uint16 _line
     (setq _line (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get lslidar_ch128x1_msgs::LslidarChPoint :md5sum-) "fc3708e731a972c688afc860a855a663")
(setf (get lslidar_ch128x1_msgs::LslidarChPoint :datatype-) "lslidar_ch128x1_msgs/LslidarChPoint")
(setf (get lslidar_ch128x1_msgs::LslidarChPoint :definition-)
      "# Time when the point is captured
float64 time

# Converted distance in the sensor frame
float64 x
float64 y
float64 z

# Raw measurement from Leishen Ch
float64 vertical_angle
float64 azimuth
float64 distance
float64 intensity
uint16  line

")



(provide :lslidar_ch128x1_msgs/LslidarChPoint "fc3708e731a972c688afc860a855a663")



;; Auto-generated. Do not edit!


(when (boundp 'lslidar_ch128x1_msgs::LslidarChScan)
  (if (not (find-package "LSLIDAR_CH128X1_MSGS"))
    (make-package "LSLIDAR_CH128X1_MSGS"))
  (shadow 'LslidarChScan (find-package "LSLIDAR_CH128X1_MSGS")))
(unless (find-package "LSLIDAR_CH128X1_MSGS::LSLIDARCHSCAN")
  (make-package "LSLIDAR_CH128X1_MSGS::LSLIDARCHSCAN"))

(in-package "ROS")
;;//! \htmlinclude LslidarChScan.msg.html


(defclass lslidar_ch128x1_msgs::LslidarChScan
  :super ros::object
  :slots (_altitude _points ))

(defmethod lslidar_ch128x1_msgs::LslidarChScan
  (:init
   (&key
    ((:altitude __altitude) 0.0)
    ((:points __points) ())
    )
   (send-super :init)
   (setq _altitude (float __altitude))
   (setq _points __points)
   self)
  (:altitude
   (&optional __altitude)
   (if __altitude (setq _altitude __altitude)) _altitude)
  (:points
   (&rest __points)
   (if (keywordp (car __points))
       (send* _points __points)
     (progn
       (if __points (setq _points (car __points)))
       _points)))
  (:serialization-length
   ()
   (+
    ;; float64 _altitude
    8
    ;; lslidar_ch128x1_msgs/LslidarChPoint[] _points
    (apply #'+ (send-all _points :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _altitude
       (sys::poke _altitude (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; lslidar_ch128x1_msgs/LslidarChPoint[] _points
     (write-long (length _points) s)
     (dolist (elem _points)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _altitude
     (setq _altitude (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; lslidar_ch128x1_msgs/LslidarChPoint[] _points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _points (let (r) (dotimes (i n) (push (instance lslidar_ch128x1_msgs::LslidarChPoint :init) r)) r))
     (dolist (elem- _points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get lslidar_ch128x1_msgs::LslidarChScan :md5sum-) "e2c77dc6b198843a42fa2ff9c4aa233e")
(setf (get lslidar_ch128x1_msgs::LslidarChScan :datatype-) "lslidar_ch128x1_msgs/LslidarChScan")
(setf (get lslidar_ch128x1_msgs::LslidarChScan :definition-)
      "# Altitude of all the points within this scan
float64 altitude

# The valid points in this scan sorted by azimuth
# from 0 to 359.99
LslidarChPoint[] points

================================================================================
MSG: lslidar_ch128x1_msgs/LslidarChPoint
# Time when the point is captured
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



(provide :lslidar_ch128x1_msgs/LslidarChScan "e2c77dc6b198843a42fa2ff9c4aa233e")



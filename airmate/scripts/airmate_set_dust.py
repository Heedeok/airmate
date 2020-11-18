#!/usr/bin/env python

import rospy
from std_msgs.msg import Float32

def talker():
    pub = rospy.Publisher('dust_density', Float32, queue_size=10)
    rospy.init_node('set_dust_density')
    rate = rospy.Rate(10) # 10hz
    dust =100.0
    while not rospy.is_shutdown():
        dust  += 10.0
        if dust > 200:
            dust = 100.0
        rospy.loginfo(dust)
        pub.publish(dust)
        rate.sleep()

if __name__ == '__main__':
    try:
        talker()
    except rospy.ROSInterruptException:
        pass
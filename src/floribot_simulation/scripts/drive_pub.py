#!/usr/bin/python3.8
# license removed for brevity
import rospy
from std_msgs.msg import Float64
from geometry_msgs.msg import Twist


velocity_publisher_fl = rospy.Publisher('/floribot/joint_fl_controller/command', Float64, queue_size=10)
velocity_publisher_fr = rospy.Publisher('/floribot/joint_fr_controller/command', Float64, queue_size=10)
velocity_publisher_rl = rospy.Publisher('/floribot/joint_rl_controller/command', Float64, queue_size=10)
velocity_publisher_rr = rospy.Publisher('/floribot/joint_rr_controller/command', Float64, queue_size=10)
vel_msg_fl = Float64()
vel_msg_fr = Float64()
vel_msg_rl = Float64()
vel_msg_rr = Float64()

def callback(data):
    vel_msg_fl = data.linear.x
    vel_msg_fr = data.linear.x
    vel_msg_rl = data.linear.x
    vel_msg_rr = data.linear.x
    velocity_publisher_fl.publish(vel_msg_fl)
    velocity_publisher_fr.publish(vel_msg_fr)
    velocity_publisher_rl.publish(vel_msg_rl)
    velocity_publisher_rr.publish(vel_msg_rr)

def listener():

    rospy.init_node('wheel_driver', anonymous=True)

    rospy.Subscriber("cmd_vel", Twist, callback)

    # spin() simply keeps python from exiting until this node is stopped
    rospy.spin()

if __name__ == '__main__':

    listener()

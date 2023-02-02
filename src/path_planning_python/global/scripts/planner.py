import rospy
import random

def planner(start_index, goal_index, width, hight, costmap, resolution, origin, grid_viz):
    open_list = []

    closed_list = set()
    parents = dict()

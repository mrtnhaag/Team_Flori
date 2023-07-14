# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "teb_ext_planner: 3 messages, 0 services")

set(MSG_I_FLAGS "-Iteb_ext_planner:/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Icostmap_converter:/opt/ros/noetic/share/costmap_converter/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(teb_ext_planner_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_custom_target(_teb_ext_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "teb_ext_planner" "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg" "geometry_msgs/Pose:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Twist:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_custom_target(_teb_ext_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "teb_ext_planner" "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg" "std_msgs/Header:geometry_msgs/Pose:teb_ext_planner/TrajectoryPointMsg:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/Twist:geometry_msgs/Quaternion"
)

get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg" NAME_WE)
add_custom_target(_teb_ext_planner_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "teb_ext_planner" "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg" "geometry_msgs/Polygon:std_msgs/Header:geometry_msgs/Pose:teb_ext_planner/TrajectoryPointMsg:geometry_msgs/Vector3:costmap_converter/ObstacleMsg:geometry_msgs/Point32:geometry_msgs/TwistWithCovariance:geometry_msgs/Point:teb_ext_planner/TrajectoryMsg:costmap_converter/ObstacleArrayMsg:geometry_msgs/Twist:geometry_msgs/Quaternion"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teb_ext_planner
)
_generate_msg_cpp(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teb_ext_planner
)
_generate_msg_cpp(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teb_ext_planner
)

### Generating Services

### Generating Module File
_generate_module_cpp(teb_ext_planner
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teb_ext_planner
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(teb_ext_planner_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(teb_ext_planner_generate_messages teb_ext_planner_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_cpp _teb_ext_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_cpp _teb_ext_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_cpp _teb_ext_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(teb_ext_planner_gencpp)
add_dependencies(teb_ext_planner_gencpp teb_ext_planner_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS teb_ext_planner_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teb_ext_planner
)
_generate_msg_eus(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teb_ext_planner
)
_generate_msg_eus(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teb_ext_planner
)

### Generating Services

### Generating Module File
_generate_module_eus(teb_ext_planner
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teb_ext_planner
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(teb_ext_planner_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(teb_ext_planner_generate_messages teb_ext_planner_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_eus _teb_ext_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_eus _teb_ext_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_eus _teb_ext_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(teb_ext_planner_geneus)
add_dependencies(teb_ext_planner_geneus teb_ext_planner_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS teb_ext_planner_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teb_ext_planner
)
_generate_msg_lisp(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teb_ext_planner
)
_generate_msg_lisp(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teb_ext_planner
)

### Generating Services

### Generating Module File
_generate_module_lisp(teb_ext_planner
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teb_ext_planner
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(teb_ext_planner_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(teb_ext_planner_generate_messages teb_ext_planner_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_lisp _teb_ext_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_lisp _teb_ext_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_lisp _teb_ext_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(teb_ext_planner_genlisp)
add_dependencies(teb_ext_planner_genlisp teb_ext_planner_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS teb_ext_planner_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teb_ext_planner
)
_generate_msg_nodejs(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teb_ext_planner
)
_generate_msg_nodejs(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teb_ext_planner
)

### Generating Services

### Generating Module File
_generate_module_nodejs(teb_ext_planner
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teb_ext_planner
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(teb_ext_planner_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(teb_ext_planner_generate_messages teb_ext_planner_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_nodejs _teb_ext_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_nodejs _teb_ext_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_nodejs _teb_ext_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(teb_ext_planner_gennodejs)
add_dependencies(teb_ext_planner_gennodejs teb_ext_planner_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS teb_ext_planner_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teb_ext_planner
)
_generate_msg_py(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teb_ext_planner
)
_generate_msg_py(teb_ext_planner
  "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Polygon.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg;/opt/ros/noetic/share/costmap_converter/cmake/../msg/ObstacleArrayMsg.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Quaternion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teb_ext_planner
)

### Generating Services

### Generating Module File
_generate_module_py(teb_ext_planner
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teb_ext_planner
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(teb_ext_planner_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(teb_ext_planner_generate_messages teb_ext_planner_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryPointMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_py _teb_ext_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/TrajectoryMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_py _teb_ext_planner_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/msg/FeedbackMsg.msg" NAME_WE)
add_dependencies(teb_ext_planner_generate_messages_py _teb_ext_planner_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(teb_ext_planner_genpy)
add_dependencies(teb_ext_planner_genpy teb_ext_planner_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS teb_ext_planner_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teb_ext_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/teb_ext_planner
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(teb_ext_planner_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(teb_ext_planner_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET costmap_converter_generate_messages_cpp)
  add_dependencies(teb_ext_planner_generate_messages_cpp costmap_converter_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teb_ext_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/teb_ext_planner
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(teb_ext_planner_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(teb_ext_planner_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET costmap_converter_generate_messages_eus)
  add_dependencies(teb_ext_planner_generate_messages_eus costmap_converter_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teb_ext_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/teb_ext_planner
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(teb_ext_planner_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(teb_ext_planner_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET costmap_converter_generate_messages_lisp)
  add_dependencies(teb_ext_planner_generate_messages_lisp costmap_converter_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teb_ext_planner)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/teb_ext_planner
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(teb_ext_planner_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(teb_ext_planner_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET costmap_converter_generate_messages_nodejs)
  add_dependencies(teb_ext_planner_generate_messages_nodejs costmap_converter_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teb_ext_planner)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teb_ext_planner\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/teb_ext_planner
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(teb_ext_planner_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(teb_ext_planner_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET costmap_converter_generate_messages_py)
  add_dependencies(teb_ext_planner_generate_messages_py costmap_converter_generate_messages_py)
endif()

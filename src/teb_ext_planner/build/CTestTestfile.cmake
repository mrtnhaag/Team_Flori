# CMake generated Testfile for 
# Source directory: /home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner
# Build directory: /home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/build
# 
# This file includes the relevant testing commands required for 
# testing this directory and lists subdirectories to be tested as well.
add_test(_ctest_teb_ext_planner_gtest_test_teb_basics "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/build/catkin_generated/env_cached.sh" "/usr/bin/python3" "/opt/ros/noetic/share/catkin/cmake/test/run_tests.py" "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/build/test_results/teb_ext_planner/gtest-test_teb_basics.xml" "--return-code" "/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/build/devel/lib/teb_ext_planner/test_teb_basics --gtest_output=xml:/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/build/test_results/teb_ext_planner/gtest-test_teb_basics.xml")
set_tests_properties(_ctest_teb_ext_planner_gtest_test_teb_basics PROPERTIES  _BACKTRACE_TRIPLES "/opt/ros/noetic/share/catkin/cmake/test/tests.cmake;160;add_test;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;98;catkin_run_tests_target;/opt/ros/noetic/share/catkin/cmake/test/gtest.cmake;37;_catkin_add_google_test;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/CMakeLists.txt;282;catkin_add_gtest;/home/martin/Documents/Master/Thesis/Team_Flori/src/teb_ext_planner/CMakeLists.txt;0;")
subdirs("gtest")

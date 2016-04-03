# generated from catkin/cmake/template/pkgConfig.cmake.in

# append elements to a list and remove existing duplicates from the list
# copied from catkin/cmake/list_append_deduplicate.cmake to keep pkgConfig
# self contained
macro(_list_append_deduplicate listname)
  if(NOT "${ARGN}" STREQUAL "")
    if(${listname})
      list(REMOVE_ITEM ${listname} ${ARGN})
    endif()
    list(APPEND ${listname} ${ARGN})
  endif()
endmacro()

# append elements to a list if they are not already in the list
# copied from catkin/cmake/list_append_unique.cmake to keep pkgConfig
# self contained
macro(_list_append_unique listname)
  foreach(_item ${ARGN})
    list(FIND ${listname} ${_item} _index)
    if(_index EQUAL -1)
      list(APPEND ${listname} ${_item})
    endif()
  endforeach()
endmacro()

# pack a list of libraries with optional build configuration keywords
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_pack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  set(_argn ${ARGN})
  list(LENGTH _argn _count)
  set(_index 0)
  while(${_index} LESS ${_count})
    list(GET _argn ${_index} lib)
    if("${lib}" MATCHES "^(debug|optimized|general)$")
      math(EXPR _index "${_index} + 1")
      if(${_index} EQUAL ${_count})
        message(FATAL_ERROR "_pack_libraries_with_build_configuration() the list of libraries '${ARGN}' ends with '${lib}' which is a build configuration keyword and must be followed by a library")
      endif()
      list(GET _argn ${_index} library)
      list(APPEND ${VAR} "${lib}${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}${library}")
    else()
      list(APPEND ${VAR} "${lib}")
    endif()
    math(EXPR _index "${_index} + 1")
  endwhile()
endmacro()

# unpack a list of libraries with optional build configuration keyword prefixes
# copied from catkin/cmake/catkin_libraries.cmake to keep pkgConfig
# self contained
macro(_unpack_libraries_with_build_configuration VAR)
  set(${VAR} "")
  foreach(lib ${ARGN})
    string(REGEX REPLACE "^(debug|optimized|general)${CATKIN_BUILD_CONFIGURATION_KEYWORD_SEPARATOR}(.+)$" "\\1;\\2" lib "${lib}")
    list(APPEND ${VAR} "${lib}")
  endforeach()
endmacro()


if(gazebo_plugins_CONFIG_INCLUDED)
  return()
endif()
set(gazebo_plugins_CONFIG_INCLUDED TRUE)

# set variables for source/devel/install prefixes
if("TRUE" STREQUAL "TRUE")
  set(gazebo_plugins_SOURCE_PREFIX /home/bismaya/catkin_ws/src/gazebo_ros_pkgs/gazebo_plugins)
  set(gazebo_plugins_DEVEL_PREFIX /home/bismaya/catkin_ws/devel)
  set(gazebo_plugins_INSTALL_PREFIX "")
  set(gazebo_plugins_PREFIX ${gazebo_plugins_DEVEL_PREFIX})
else()
  set(gazebo_plugins_SOURCE_PREFIX "")
  set(gazebo_plugins_DEVEL_PREFIX "")
  set(gazebo_plugins_INSTALL_PREFIX /home/bismaya/catkin_ws/install)
  set(gazebo_plugins_PREFIX ${gazebo_plugins_INSTALL_PREFIX})
endif()

# warn when using a deprecated package
if(NOT "" STREQUAL "")
  set(_msg "WARNING: package 'gazebo_plugins' is deprecated")
  # append custom deprecation text if available
  if(NOT "" STREQUAL "TRUE")
    set(_msg "${_msg} ()")
  endif()
  message("${_msg}")
endif()

# flag project as catkin-based to distinguish if a find_package()-ed project is a catkin project
set(gazebo_plugins_FOUND_CATKIN_PROJECT TRUE)

if(NOT "/home/bismaya/catkin_ws/devel/include;/home/bismaya/catkin_ws/src/gazebo_ros_pkgs/gazebo_plugins/include " STREQUAL " ")
  set(gazebo_plugins_INCLUDE_DIRS "")
  set(_include_dirs "/home/bismaya/catkin_ws/devel/include;/home/bismaya/catkin_ws/src/gazebo_ros_pkgs/gazebo_plugins/include")
  foreach(idir ${_include_dirs})
    if(IS_ABSOLUTE ${idir} AND IS_DIRECTORY ${idir})
      set(include ${idir})
    elseif("${idir} " STREQUAL "include ")
      get_filename_component(include "${gazebo_plugins_DIR}/../../../include" ABSOLUTE)
      if(NOT IS_DIRECTORY ${include})
        message(FATAL_ERROR "Project 'gazebo_plugins' specifies '${idir}' as an include dir, which is not found.  It does not exist in '${include}'.  Ask the maintainer 'John Hsu <hsu@osrfoundation.org>' to fix it.")
      endif()
    else()
      message(FATAL_ERROR "Project 'gazebo_plugins' specifies '${idir}' as an include dir, which is not found.  It does neither exist as an absolute directory nor in '/home/bismaya/catkin_ws/src/gazebo_ros_pkgs/gazebo_plugins/${idir}'.  Ask the maintainer 'John Hsu <hsu@osrfoundation.org>' to fix it.")
    endif()
    _list_append_unique(gazebo_plugins_INCLUDE_DIRS ${include})
  endforeach()
endif()

set(libraries "vision_reconfigure;gazebo_ros_utils;gazebo_ros_camera_utils;gazebo_ros_camera;gazebo_ros_multicamera;gazebo_ros_depth_camera;gazebo_ros_openni_kinect;gazebo_ros_gpu_laser;gazebo_ros_laser;gazebo_ros_block_laser;gazebo_ros_p3d;gazebo_ros_imu;gazebo_ros_f3d;gazebo_ros_ft_sensor;gazebo_ros_bumper;gazebo_ros_template;gazebo_ros_projector;gazebo_ros_prosilica;gazebo_ros_force;gazebo_ros_joint_trajectory;gazebo_ros_joint_state_publisher;gazebo_ros_joint_pose_trajectory;gazebo_ros_diff_drive;gazebo_ros_tricycle_drive;gazebo_ros_skid_steer_drive;gazebo_ros_video;gazebo_ros_planar_move")
foreach(library ${libraries})
  # keep build configuration keywords, target names and absolute libraries as-is
  if("${library}" MATCHES "^(debug|optimized|general)$")
    list(APPEND gazebo_plugins_LIBRARIES ${library})
  elseif(TARGET ${library})
    list(APPEND gazebo_plugins_LIBRARIES ${library})
  elseif(IS_ABSOLUTE ${library})
    list(APPEND gazebo_plugins_LIBRARIES ${library})
  else()
    set(lib_path "")
    set(lib "${library}-NOTFOUND")
    # since the path where the library is found is returned we have to iterate over the paths manually
    foreach(path /home/bismaya/catkin_ws/devel/lib;/home/bismaya/catkin_ws/install/lib;/home/bismaya/catkin_ws/devel/lib;/opt/ros/indigo/lib)
      find_library(lib ${library}
        PATHS ${path}
        NO_DEFAULT_PATH NO_CMAKE_FIND_ROOT_PATH)
      if(lib)
        set(lib_path ${path})
        break()
      endif()
    endforeach()
    if(lib)
      _list_append_unique(gazebo_plugins_LIBRARY_DIRS ${lib_path})
      list(APPEND gazebo_plugins_LIBRARIES ${lib})
    else()
      # as a fall back for non-catkin libraries try to search globally
      find_library(lib ${library})
      if(NOT lib)
        message(FATAL_ERROR "Project '${PROJECT_NAME}' tried to find library '${library}'.  The library is neither a target nor built/installed properly.  Did you compile project 'gazebo_plugins'?  Did you find_package() it before the subdirectory containing its code is included?")
      endif()
      list(APPEND gazebo_plugins_LIBRARIES ${lib})
    endif()
  endif()
endforeach()

set(gazebo_plugins_EXPORTED_TARGETS "gazebo_plugins_gencfg")
# create dummy targets for exported code generation targets to make life of users easier
foreach(t ${gazebo_plugins_EXPORTED_TARGETS})
  if(NOT TARGET ${t})
    add_custom_target(${t})
  endif()
endforeach()

set(depends "message_generation;gazebo_msgs;roscpp;rospy;nodelet;angles;std_srvs;geometry_msgs;sensor_msgs;nav_msgs;urdf;tf;tf2_ros;dynamic_reconfigure;driver_base;rosgraph_msgs;trajectory_msgs;image_transport;rosconsole;camera_info_manager;std_msgs")
foreach(depend ${depends})
  string(REPLACE " " ";" depend_list ${depend})
  # the package name of the dependency must be kept in a unique variable so that it is not overwritten in recursive calls
  list(GET depend_list 0 gazebo_plugins_dep)
  list(LENGTH depend_list count)
  if(${count} EQUAL 1)
    # simple dependencies must only be find_package()-ed once
    if(NOT ${gazebo_plugins_dep}_FOUND)
      find_package(${gazebo_plugins_dep} REQUIRED)
    endif()
  else()
    # dependencies with components must be find_package()-ed again
    list(REMOVE_AT depend_list 0)
    find_package(${gazebo_plugins_dep} REQUIRED ${depend_list})
  endif()
  _list_append_unique(gazebo_plugins_INCLUDE_DIRS ${${gazebo_plugins_dep}_INCLUDE_DIRS})

  # merge build configuration keywords with library names to correctly deduplicate
  _pack_libraries_with_build_configuration(gazebo_plugins_LIBRARIES ${gazebo_plugins_LIBRARIES})
  _pack_libraries_with_build_configuration(_libraries ${${gazebo_plugins_dep}_LIBRARIES})
  _list_append_deduplicate(gazebo_plugins_LIBRARIES ${_libraries})
  # undo build configuration keyword merging after deduplication
  _unpack_libraries_with_build_configuration(gazebo_plugins_LIBRARIES ${gazebo_plugins_LIBRARIES})

  _list_append_unique(gazebo_plugins_LIBRARY_DIRS ${${gazebo_plugins_dep}_LIBRARY_DIRS})
  list(APPEND gazebo_plugins_EXPORTED_TARGETS ${${gazebo_plugins_dep}_EXPORTED_TARGETS})
endforeach()

set(pkg_cfg_extras "")
foreach(extra ${pkg_cfg_extras})
  if(NOT IS_ABSOLUTE ${extra})
    set(extra ${gazebo_plugins_DIR}/${extra})
  endif()
  include(${extra})
endforeach()

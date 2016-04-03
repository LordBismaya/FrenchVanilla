#!/bin/sh

if [ -n "$DESTDIR" ] ; then
    case $DESTDIR in
        /*) # ok
            ;;
        *)
            /bin/echo "DESTDIR argument must be absolute... "
            /bin/echo "otherwise python's distutils will bork things."
            exit 1
    esac
    DESTDIR_ARG="--root=$DESTDIR"
fi

echo_and_run() { echo "+ $@" ; "$@" ; }

echo_and_run cd "/home/bismaya/catkin_ws/src/gazebo_ros_pkgs/gazebo_plugins"

# Note that PYTHONPATH is pulled from the environment to support installing
# into one location when some dependencies were installed in another
# location, #123.
echo_and_run /usr/bin/env \
    PYTHONPATH="/home/bismaya/catkin_ws/install/lib/python2.7/dist-packages:/home/bismaya/catkin_ws/build/lib/python2.7/dist-packages:$PYTHONPATH" \
    CATKIN_BINARY_DIR="/home/bismaya/catkin_ws/build" \
    "/usr/bin/python" \
    "/home/bismaya/catkin_ws/src/gazebo_ros_pkgs/gazebo_plugins/setup.py" \
    build --build-base "/home/bismaya/catkin_ws/build/gazebo_ros_pkgs/gazebo_plugins" \
    install \
    $DESTDIR_ARG \
    --install-layout=deb --prefix="/home/bismaya/catkin_ws/install" --install-scripts="/home/bismaya/catkin_ws/install/bin"

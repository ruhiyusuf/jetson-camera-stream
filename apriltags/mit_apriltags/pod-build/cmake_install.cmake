# Install script for directory: /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/build")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib" TYPE STATIC_LIBRARY FILES "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/lib/libapriltags.a")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include/AprilTags" TYPE FILE FILES
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Edge.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/FloatImage.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/GLine2D.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/GLineSegment2D.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Gaussian.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/GrayModel.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Gridder.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Homography33.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/MathUtil.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Quad.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Segment.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Tag16h5.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Tag16h5_other.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Tag25h7.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Tag25h9.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Tag36h11.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Tag36h11_other.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/Tag36h9.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/TagDetection.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/TagDetector.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/TagFamily.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/UnionFindSimple.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/XYWeight.h"
    "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/AprilTags/pch.h"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/lib/pkgconfig/apriltags.pc")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/example/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")

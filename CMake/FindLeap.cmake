# - Find the LeapMotion SDK
# This module defines the following variables:
#  LEAP_INCLUDE_DIRS - include directories for Leap
#  LEAP_LIBRARIES - libraries to link against Leap
#  LEAP_FOUND - true if Leap has been found and can be used

find_path(LEAP_INCLUDE_DIRS Leap.h
  PATHS
    ${LEAP_SDK_ROOT}/include
    /opt/LeapSDK/include
    /opt/leap-sdk/include)

find_library(LEAP_LIBRARIES
  NAMES Leap
  PATHS
    ${LEAP_SDK_ROOT}/lib
    /opt/LeapSDK/lib
    /opt/leap-sdk/lib/x64)

find_package_handle_standard_args(Leap REQUIRED_VARS LEAP_INCLUDE_DIRS LEAP_LIBRARIES)

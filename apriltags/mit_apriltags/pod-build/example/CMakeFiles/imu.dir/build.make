# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.10

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/bin/cmake

# The command to remove a file.
RM = /usr/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build

# Include any dependencies generated for this target.
include example/CMakeFiles/imu.dir/depend.make

# Include the progress variables for this target.
include example/CMakeFiles/imu.dir/progress.make

# Include the compile flags for this target's objects.
include example/CMakeFiles/imu.dir/flags.make

example/CMakeFiles/imu.dir/imu.cpp.o: example/CMakeFiles/imu.dir/flags.make
example/CMakeFiles/imu.dir/imu.cpp.o: ../example/imu.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object example/CMakeFiles/imu.dir/imu.cpp.o"
	cd /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/example && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imu.dir/imu.cpp.o -c /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/example/imu.cpp

example/CMakeFiles/imu.dir/imu.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imu.dir/imu.cpp.i"
	cd /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/example/imu.cpp > CMakeFiles/imu.dir/imu.cpp.i

example/CMakeFiles/imu.dir/imu.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imu.dir/imu.cpp.s"
	cd /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/example/imu.cpp -o CMakeFiles/imu.dir/imu.cpp.s

example/CMakeFiles/imu.dir/imu.cpp.o.requires:

.PHONY : example/CMakeFiles/imu.dir/imu.cpp.o.requires

example/CMakeFiles/imu.dir/imu.cpp.o.provides: example/CMakeFiles/imu.dir/imu.cpp.o.requires
	$(MAKE) -f example/CMakeFiles/imu.dir/build.make example/CMakeFiles/imu.dir/imu.cpp.o.provides.build
.PHONY : example/CMakeFiles/imu.dir/imu.cpp.o.provides

example/CMakeFiles/imu.dir/imu.cpp.o.provides.build: example/CMakeFiles/imu.dir/imu.cpp.o


example/CMakeFiles/imu.dir/Serial.cpp.o: example/CMakeFiles/imu.dir/flags.make
example/CMakeFiles/imu.dir/Serial.cpp.o: ../example/Serial.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object example/CMakeFiles/imu.dir/Serial.cpp.o"
	cd /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/example && /usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/imu.dir/Serial.cpp.o -c /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/example/Serial.cpp

example/CMakeFiles/imu.dir/Serial.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/imu.dir/Serial.cpp.i"
	cd /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/example/Serial.cpp > CMakeFiles/imu.dir/Serial.cpp.i

example/CMakeFiles/imu.dir/Serial.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/imu.dir/Serial.cpp.s"
	cd /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/example && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/example/Serial.cpp -o CMakeFiles/imu.dir/Serial.cpp.s

example/CMakeFiles/imu.dir/Serial.cpp.o.requires:

.PHONY : example/CMakeFiles/imu.dir/Serial.cpp.o.requires

example/CMakeFiles/imu.dir/Serial.cpp.o.provides: example/CMakeFiles/imu.dir/Serial.cpp.o.requires
	$(MAKE) -f example/CMakeFiles/imu.dir/build.make example/CMakeFiles/imu.dir/Serial.cpp.o.provides.build
.PHONY : example/CMakeFiles/imu.dir/Serial.cpp.o.provides

example/CMakeFiles/imu.dir/Serial.cpp.o.provides.build: example/CMakeFiles/imu.dir/Serial.cpp.o


# Object files for target imu
imu_OBJECTS = \
"CMakeFiles/imu.dir/imu.cpp.o" \
"CMakeFiles/imu.dir/Serial.cpp.o"

# External object files for target imu
imu_EXTERNAL_OBJECTS =

bin/imu: example/CMakeFiles/imu.dir/imu.cpp.o
bin/imu: example/CMakeFiles/imu.dir/Serial.cpp.o
bin/imu: example/CMakeFiles/imu.dir/build.make
bin/imu: lib/libapriltags.a
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_gapi.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_stitching.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_alphamat.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_aruco.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_barcode.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_bgsegm.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_bioinspired.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_ccalib.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudabgsegm.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudafeatures2d.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudaobjdetect.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudastereo.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_dnn_objdetect.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_dnn_superres.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_dpm.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_face.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_freetype.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_fuzzy.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_hdf.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_hfs.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_img_hash.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_intensity_transform.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_line_descriptor.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_mcc.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_quality.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_rapid.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_reg.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_rgbd.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_saliency.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_sfm.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_stereo.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_structured_light.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_phase_unwrapping.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_superres.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudacodec.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_surface_matching.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_tracking.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_highgui.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_datasets.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_plot.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_text.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_videostab.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_videoio.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudaoptflow.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudalegacy.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudawarping.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_optflow.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_wechat_qrcode.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_xfeatures2d.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_ml.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_shape.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_ximgproc.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_video.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_dnn.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_xobjdetect.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_imgcodecs.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_objdetect.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_calib3d.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_features2d.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_flann.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_xphoto.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_photo.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudaimgproc.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudafilters.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_imgproc.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudaarithm.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_core.so.4.5.3
bin/imu: /usr/lib/aarch64-linux-gnu/libopencv_cudev.so.4.5.3
bin/imu: example/CMakeFiles/imu.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Linking CXX executable ../bin/imu"
	cd /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/example && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/imu.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
example/CMakeFiles/imu.dir/build: bin/imu

.PHONY : example/CMakeFiles/imu.dir/build

example/CMakeFiles/imu.dir/requires: example/CMakeFiles/imu.dir/imu.cpp.o.requires
example/CMakeFiles/imu.dir/requires: example/CMakeFiles/imu.dir/Serial.cpp.o.requires

.PHONY : example/CMakeFiles/imu.dir/requires

example/CMakeFiles/imu.dir/clean:
	cd /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/example && $(CMAKE_COMMAND) -P CMakeFiles/imu.dir/cmake_clean.cmake
.PHONY : example/CMakeFiles/imu.dir/clean

example/CMakeFiles/imu.dir/depend:
	cd /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/example /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/example /home/jetson/projects/jetson-camera-stream/apriltags/mit_apriltags/pod-build/example/CMakeFiles/imu.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : example/CMakeFiles/imu.dir/depend


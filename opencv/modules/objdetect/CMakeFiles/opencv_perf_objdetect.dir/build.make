# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 2.8

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
CMAKE_COMMAND = /usr/local/Cellar/cmake/2.8.12.1/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/2.8.12.1/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/Cellar/cmake/2.8.12.1/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/zj/Desktop/code/pi/opencv

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zj/Desktop/code/pi/opencv

# Include any dependencies generated for this target.
include modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/depend.make

# Include the progress variables for this target.
include modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/progress.make

# Include the compile flags for this target's objects.
include modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/flags.make

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/flags.make
modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o: modules/objdetect/perf/perf_cascadeclassifier.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zj/Desktop/code/pi/opencv/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o"
	cd /Users/zj/Desktop/code/pi/opencv/modules/objdetect && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o -c /Users/zj/Desktop/code/pi/opencv/modules/objdetect/perf/perf_cascadeclassifier.cpp

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.i"
	cd /Users/zj/Desktop/code/pi/opencv/modules/objdetect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zj/Desktop/code/pi/opencv/modules/objdetect/perf/perf_cascadeclassifier.cpp > CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.i

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.s"
	cd /Users/zj/Desktop/code/pi/opencv/modules/objdetect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zj/Desktop/code/pi/opencv/modules/objdetect/perf/perf_cascadeclassifier.cpp -o CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.s

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o.requires:
.PHONY : modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o.requires

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o.provides: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o.requires
	$(MAKE) -f modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/build.make modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o.provides.build
.PHONY : modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o.provides

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o.provides.build: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/flags.make
modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o: modules/objdetect/perf/perf_main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zj/Desktop/code/pi/opencv/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o"
	cd /Users/zj/Desktop/code/pi/opencv/modules/objdetect && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o -c /Users/zj/Desktop/code/pi/opencv/modules/objdetect/perf/perf_main.cpp

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.i"
	cd /Users/zj/Desktop/code/pi/opencv/modules/objdetect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zj/Desktop/code/pi/opencv/modules/objdetect/perf/perf_main.cpp > CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.i

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.s"
	cd /Users/zj/Desktop/code/pi/opencv/modules/objdetect && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zj/Desktop/code/pi/opencv/modules/objdetect/perf/perf_main.cpp -o CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.s

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o.requires:
.PHONY : modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o.requires

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o.provides: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o.requires
	$(MAKE) -f modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/build.make modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o.provides.build
.PHONY : modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o.provides

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o.provides.build: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o

# Object files for target opencv_perf_objdetect
opencv_perf_objdetect_OBJECTS = \
"CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o" \
"CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o"

# External object files for target opencv_perf_objdetect
opencv_perf_objdetect_EXTERNAL_OBJECTS =

bin/opencv_perf_objdetect: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o
bin/opencv_perf_objdetect: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o
bin/opencv_perf_objdetect: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/build.make
bin/opencv_perf_objdetect: lib/libopencv_core.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_imgproc.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_highgui.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_objdetect.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_ts.a
bin/opencv_perf_objdetect: lib/libopencv_highgui.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_core.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_flann.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_imgproc.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_highgui.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_features2d.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_highgui.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_imgproc.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_flann.2.4.9.dylib
bin/opencv_perf_objdetect: lib/libopencv_core.2.4.9.dylib
bin/opencv_perf_objdetect: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/opencv_perf_objdetect"
	cd /Users/zj/Desktop/code/pi/opencv/modules/objdetect && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_perf_objdetect.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/build: bin/opencv_perf_objdetect
.PHONY : modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/build

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/requires: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_cascadeclassifier.cpp.o.requires
modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/requires: modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/perf/perf_main.cpp.o.requires
.PHONY : modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/requires

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/clean:
	cd /Users/zj/Desktop/code/pi/opencv/modules/objdetect && $(CMAKE_COMMAND) -P CMakeFiles/opencv_perf_objdetect.dir/cmake_clean.cmake
.PHONY : modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/clean

modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/depend:
	cd /Users/zj/Desktop/code/pi/opencv && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zj/Desktop/code/pi/opencv /Users/zj/Desktop/code/pi/opencv/modules/objdetect /Users/zj/Desktop/code/pi/opencv /Users/zj/Desktop/code/pi/opencv/modules/objdetect /Users/zj/Desktop/code/pi/opencv/modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/objdetect/CMakeFiles/opencv_perf_objdetect.dir/depend


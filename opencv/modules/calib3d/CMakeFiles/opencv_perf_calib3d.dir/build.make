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
CMAKE_SOURCE_DIR = /Users/zj/Desktop/code/opencv-2.4.9

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/zj/Desktop/code/opencv-2.4.9

# Include any dependencies generated for this target.
include modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/depend.make

# Include the progress variables for this target.
include modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/progress.make

# Include the compile flags for this target's objects.
include modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/flags.make

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/flags.make
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o: modules/calib3d/perf/perf_cicrlesGrid.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zj/Desktop/code/opencv-2.4.9/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o"
	cd /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o -c /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d/perf/perf_cicrlesGrid.cpp

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.i"
	cd /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d/perf/perf_cicrlesGrid.cpp > CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.i

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.s"
	cd /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d/perf/perf_cicrlesGrid.cpp -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.s

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.requires:
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.requires

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.provides: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.requires
	$(MAKE) -f modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build.make modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.provides.build
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.provides

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.provides.build: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/flags.make
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o: modules/calib3d/perf/perf_main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zj/Desktop/code/opencv-2.4.9/CMakeFiles $(CMAKE_PROGRESS_2)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o"
	cd /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o -c /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d/perf/perf_main.cpp

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.i"
	cd /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d/perf/perf_main.cpp > CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.i

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.s"
	cd /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d/perf/perf_main.cpp -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.s

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.requires:
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.requires

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.provides: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.requires
	$(MAKE) -f modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build.make modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.provides.build
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.provides

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.provides.build: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/flags.make
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o: modules/calib3d/perf/perf_pnp.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/zj/Desktop/code/opencv-2.4.9/CMakeFiles $(CMAKE_PROGRESS_3)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o"
	cd /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d && /usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o -c /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d/perf/perf_pnp.cpp

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.i"
	cd /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d/perf/perf_pnp.cpp > CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.i

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.s"
	cd /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d && /usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d/perf/perf_pnp.cpp -o CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.s

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.requires:
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.requires

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.provides: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.requires
	$(MAKE) -f modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build.make modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.provides.build
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.provides

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.provides.build: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o

# Object files for target opencv_perf_calib3d
opencv_perf_calib3d_OBJECTS = \
"CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o" \
"CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o" \
"CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o"

# External object files for target opencv_perf_calib3d
opencv_perf_calib3d_EXTERNAL_OBJECTS =

bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o
bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o
bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o
bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build.make
bin/opencv_perf_calib3d: lib/libopencv_core.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_flann.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_imgproc.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_highgui.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_features2d.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_calib3d.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_ts.a
bin/opencv_perf_calib3d: lib/libopencv_highgui.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_core.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_flann.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_imgproc.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_highgui.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_features2d.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_flann.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_highgui.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_imgproc.2.4.9.dylib
bin/opencv_perf_calib3d: lib/libopencv_core.2.4.9.dylib
bin/opencv_perf_calib3d: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable ../../bin/opencv_perf_calib3d"
	cd /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/opencv_perf_calib3d.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build: bin/opencv_perf_calib3d
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/build

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/requires: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_cicrlesGrid.cpp.o.requires
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/requires: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_main.cpp.o.requires
modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/requires: modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/perf/perf_pnp.cpp.o.requires
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/requires

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/clean:
	cd /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d && $(CMAKE_COMMAND) -P CMakeFiles/opencv_perf_calib3d.dir/cmake_clean.cmake
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/clean

modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/depend:
	cd /Users/zj/Desktop/code/opencv-2.4.9 && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/zj/Desktop/code/opencv-2.4.9 /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d /Users/zj/Desktop/code/opencv-2.4.9 /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d /Users/zj/Desktop/code/opencv-2.4.9/modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : modules/calib3d/CMakeFiles/opencv_perf_calib3d.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.20

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:

#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:

# Disable VCS-based implicit rules.
% : %,v

# Disable VCS-based implicit rules.
% : RCS/%

# Disable VCS-based implicit rules.
% : RCS/%,v

# Disable VCS-based implicit rules.
% : SCCS/s.%

# Disable VCS-based implicit rules.
% : s.%

.SUFFIXES: .hpux_make_needs_suffix_list

# Command-line flag to silence nested $(MAKE).
$(VERBOSE)MAKESILENT = -s

#Suppress display of executed commands.
$(VERBOSE).SILENT:

# A target that is always out of date.
cmake_force:
.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/bin/cmake

# The command to remove a file.
RM = /usr/local/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/user/sda4/Desktop/myslam

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/user/sda4/Desktop/myslam/build

# Include any dependencies generated for this target.
include src/CMakeFiles/myslam.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include src/CMakeFiles/myslam.dir/compiler_depend.make

# Include the progress variables for this target.
include src/CMakeFiles/myslam.dir/progress.make

# Include the compile flags for this target's objects.
include src/CMakeFiles/myslam.dir/flags.make

src/CMakeFiles/myslam.dir/System.cpp.o: src/CMakeFiles/myslam.dir/flags.make
src/CMakeFiles/myslam.dir/System.cpp.o: ../src/System.cpp
src/CMakeFiles/myslam.dir/System.cpp.o: src/CMakeFiles/myslam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object src/CMakeFiles/myslam.dir/System.cpp.o"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myslam.dir/System.cpp.o -MF CMakeFiles/myslam.dir/System.cpp.o.d -o CMakeFiles/myslam.dir/System.cpp.o -c /home/user/sda4/Desktop/myslam/src/System.cpp

src/CMakeFiles/myslam.dir/System.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myslam.dir/System.cpp.i"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/sda4/Desktop/myslam/src/System.cpp > CMakeFiles/myslam.dir/System.cpp.i

src/CMakeFiles/myslam.dir/System.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myslam.dir/System.cpp.s"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/sda4/Desktop/myslam/src/System.cpp -o CMakeFiles/myslam.dir/System.cpp.s

src/CMakeFiles/myslam.dir/config.cpp.o: src/CMakeFiles/myslam.dir/flags.make
src/CMakeFiles/myslam.dir/config.cpp.o: ../src/config.cpp
src/CMakeFiles/myslam.dir/config.cpp.o: src/CMakeFiles/myslam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object src/CMakeFiles/myslam.dir/config.cpp.o"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myslam.dir/config.cpp.o -MF CMakeFiles/myslam.dir/config.cpp.o.d -o CMakeFiles/myslam.dir/config.cpp.o -c /home/user/sda4/Desktop/myslam/src/config.cpp

src/CMakeFiles/myslam.dir/config.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myslam.dir/config.cpp.i"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/sda4/Desktop/myslam/src/config.cpp > CMakeFiles/myslam.dir/config.cpp.i

src/CMakeFiles/myslam.dir/config.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myslam.dir/config.cpp.s"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/sda4/Desktop/myslam/src/config.cpp -o CMakeFiles/myslam.dir/config.cpp.s

src/CMakeFiles/myslam.dir/camera.cpp.o: src/CMakeFiles/myslam.dir/flags.make
src/CMakeFiles/myslam.dir/camera.cpp.o: ../src/camera.cpp
src/CMakeFiles/myslam.dir/camera.cpp.o: src/CMakeFiles/myslam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object src/CMakeFiles/myslam.dir/camera.cpp.o"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myslam.dir/camera.cpp.o -MF CMakeFiles/myslam.dir/camera.cpp.o.d -o CMakeFiles/myslam.dir/camera.cpp.o -c /home/user/sda4/Desktop/myslam/src/camera.cpp

src/CMakeFiles/myslam.dir/camera.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myslam.dir/camera.cpp.i"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/sda4/Desktop/myslam/src/camera.cpp > CMakeFiles/myslam.dir/camera.cpp.i

src/CMakeFiles/myslam.dir/camera.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myslam.dir/camera.cpp.s"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/sda4/Desktop/myslam/src/camera.cpp -o CMakeFiles/myslam.dir/camera.cpp.s

src/CMakeFiles/myslam.dir/Map.cpp.o: src/CMakeFiles/myslam.dir/flags.make
src/CMakeFiles/myslam.dir/Map.cpp.o: ../src/Map.cpp
src/CMakeFiles/myslam.dir/Map.cpp.o: src/CMakeFiles/myslam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object src/CMakeFiles/myslam.dir/Map.cpp.o"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myslam.dir/Map.cpp.o -MF CMakeFiles/myslam.dir/Map.cpp.o.d -o CMakeFiles/myslam.dir/Map.cpp.o -c /home/user/sda4/Desktop/myslam/src/Map.cpp

src/CMakeFiles/myslam.dir/Map.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myslam.dir/Map.cpp.i"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/sda4/Desktop/myslam/src/Map.cpp > CMakeFiles/myslam.dir/Map.cpp.i

src/CMakeFiles/myslam.dir/Map.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myslam.dir/Map.cpp.s"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/sda4/Desktop/myslam/src/Map.cpp -o CMakeFiles/myslam.dir/Map.cpp.s

src/CMakeFiles/myslam.dir/MapPoint.cpp.o: src/CMakeFiles/myslam.dir/flags.make
src/CMakeFiles/myslam.dir/MapPoint.cpp.o: ../src/MapPoint.cpp
src/CMakeFiles/myslam.dir/MapPoint.cpp.o: src/CMakeFiles/myslam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object src/CMakeFiles/myslam.dir/MapPoint.cpp.o"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myslam.dir/MapPoint.cpp.o -MF CMakeFiles/myslam.dir/MapPoint.cpp.o.d -o CMakeFiles/myslam.dir/MapPoint.cpp.o -c /home/user/sda4/Desktop/myslam/src/MapPoint.cpp

src/CMakeFiles/myslam.dir/MapPoint.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myslam.dir/MapPoint.cpp.i"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/sda4/Desktop/myslam/src/MapPoint.cpp > CMakeFiles/myslam.dir/MapPoint.cpp.i

src/CMakeFiles/myslam.dir/MapPoint.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myslam.dir/MapPoint.cpp.s"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/sda4/Desktop/myslam/src/MapPoint.cpp -o CMakeFiles/myslam.dir/MapPoint.cpp.s

src/CMakeFiles/myslam.dir/Frame.cpp.o: src/CMakeFiles/myslam.dir/flags.make
src/CMakeFiles/myslam.dir/Frame.cpp.o: ../src/Frame.cpp
src/CMakeFiles/myslam.dir/Frame.cpp.o: src/CMakeFiles/myslam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object src/CMakeFiles/myslam.dir/Frame.cpp.o"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myslam.dir/Frame.cpp.o -MF CMakeFiles/myslam.dir/Frame.cpp.o.d -o CMakeFiles/myslam.dir/Frame.cpp.o -c /home/user/sda4/Desktop/myslam/src/Frame.cpp

src/CMakeFiles/myslam.dir/Frame.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myslam.dir/Frame.cpp.i"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/sda4/Desktop/myslam/src/Frame.cpp > CMakeFiles/myslam.dir/Frame.cpp.i

src/CMakeFiles/myslam.dir/Frame.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myslam.dir/Frame.cpp.s"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/sda4/Desktop/myslam/src/Frame.cpp -o CMakeFiles/myslam.dir/Frame.cpp.s

src/CMakeFiles/myslam.dir/dataset.cpp.o: src/CMakeFiles/myslam.dir/flags.make
src/CMakeFiles/myslam.dir/dataset.cpp.o: ../src/dataset.cpp
src/CMakeFiles/myslam.dir/dataset.cpp.o: src/CMakeFiles/myslam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object src/CMakeFiles/myslam.dir/dataset.cpp.o"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myslam.dir/dataset.cpp.o -MF CMakeFiles/myslam.dir/dataset.cpp.o.d -o CMakeFiles/myslam.dir/dataset.cpp.o -c /home/user/sda4/Desktop/myslam/src/dataset.cpp

src/CMakeFiles/myslam.dir/dataset.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myslam.dir/dataset.cpp.i"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/sda4/Desktop/myslam/src/dataset.cpp > CMakeFiles/myslam.dir/dataset.cpp.i

src/CMakeFiles/myslam.dir/dataset.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myslam.dir/dataset.cpp.s"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/sda4/Desktop/myslam/src/dataset.cpp -o CMakeFiles/myslam.dir/dataset.cpp.s

src/CMakeFiles/myslam.dir/FrontEnd.cpp.o: src/CMakeFiles/myslam.dir/flags.make
src/CMakeFiles/myslam.dir/FrontEnd.cpp.o: ../src/FrontEnd.cpp
src/CMakeFiles/myslam.dir/FrontEnd.cpp.o: src/CMakeFiles/myslam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object src/CMakeFiles/myslam.dir/FrontEnd.cpp.o"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myslam.dir/FrontEnd.cpp.o -MF CMakeFiles/myslam.dir/FrontEnd.cpp.o.d -o CMakeFiles/myslam.dir/FrontEnd.cpp.o -c /home/user/sda4/Desktop/myslam/src/FrontEnd.cpp

src/CMakeFiles/myslam.dir/FrontEnd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myslam.dir/FrontEnd.cpp.i"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/sda4/Desktop/myslam/src/FrontEnd.cpp > CMakeFiles/myslam.dir/FrontEnd.cpp.i

src/CMakeFiles/myslam.dir/FrontEnd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myslam.dir/FrontEnd.cpp.s"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/sda4/Desktop/myslam/src/FrontEnd.cpp -o CMakeFiles/myslam.dir/FrontEnd.cpp.s

src/CMakeFiles/myslam.dir/BackEnd.cpp.o: src/CMakeFiles/myslam.dir/flags.make
src/CMakeFiles/myslam.dir/BackEnd.cpp.o: ../src/BackEnd.cpp
src/CMakeFiles/myslam.dir/BackEnd.cpp.o: src/CMakeFiles/myslam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Building CXX object src/CMakeFiles/myslam.dir/BackEnd.cpp.o"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myslam.dir/BackEnd.cpp.o -MF CMakeFiles/myslam.dir/BackEnd.cpp.o.d -o CMakeFiles/myslam.dir/BackEnd.cpp.o -c /home/user/sda4/Desktop/myslam/src/BackEnd.cpp

src/CMakeFiles/myslam.dir/BackEnd.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myslam.dir/BackEnd.cpp.i"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/sda4/Desktop/myslam/src/BackEnd.cpp > CMakeFiles/myslam.dir/BackEnd.cpp.i

src/CMakeFiles/myslam.dir/BackEnd.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myslam.dir/BackEnd.cpp.s"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/sda4/Desktop/myslam/src/BackEnd.cpp -o CMakeFiles/myslam.dir/BackEnd.cpp.s

src/CMakeFiles/myslam.dir/Convert.cpp.o: src/CMakeFiles/myslam.dir/flags.make
src/CMakeFiles/myslam.dir/Convert.cpp.o: ../src/Convert.cpp
src/CMakeFiles/myslam.dir/Convert.cpp.o: src/CMakeFiles/myslam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_10) "Building CXX object src/CMakeFiles/myslam.dir/Convert.cpp.o"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myslam.dir/Convert.cpp.o -MF CMakeFiles/myslam.dir/Convert.cpp.o.d -o CMakeFiles/myslam.dir/Convert.cpp.o -c /home/user/sda4/Desktop/myslam/src/Convert.cpp

src/CMakeFiles/myslam.dir/Convert.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myslam.dir/Convert.cpp.i"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/sda4/Desktop/myslam/src/Convert.cpp > CMakeFiles/myslam.dir/Convert.cpp.i

src/CMakeFiles/myslam.dir/Convert.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myslam.dir/Convert.cpp.s"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/sda4/Desktop/myslam/src/Convert.cpp -o CMakeFiles/myslam.dir/Convert.cpp.s

src/CMakeFiles/myslam.dir/viewer.cpp.o: src/CMakeFiles/myslam.dir/flags.make
src/CMakeFiles/myslam.dir/viewer.cpp.o: ../src/viewer.cpp
src/CMakeFiles/myslam.dir/viewer.cpp.o: src/CMakeFiles/myslam.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_11) "Building CXX object src/CMakeFiles/myslam.dir/viewer.cpp.o"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT src/CMakeFiles/myslam.dir/viewer.cpp.o -MF CMakeFiles/myslam.dir/viewer.cpp.o.d -o CMakeFiles/myslam.dir/viewer.cpp.o -c /home/user/sda4/Desktop/myslam/src/viewer.cpp

src/CMakeFiles/myslam.dir/viewer.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/myslam.dir/viewer.cpp.i"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/user/sda4/Desktop/myslam/src/viewer.cpp > CMakeFiles/myslam.dir/viewer.cpp.i

src/CMakeFiles/myslam.dir/viewer.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/myslam.dir/viewer.cpp.s"
	cd /home/user/sda4/Desktop/myslam/build/src && /usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/user/sda4/Desktop/myslam/src/viewer.cpp -o CMakeFiles/myslam.dir/viewer.cpp.s

# Object files for target myslam
myslam_OBJECTS = \
"CMakeFiles/myslam.dir/System.cpp.o" \
"CMakeFiles/myslam.dir/config.cpp.o" \
"CMakeFiles/myslam.dir/camera.cpp.o" \
"CMakeFiles/myslam.dir/Map.cpp.o" \
"CMakeFiles/myslam.dir/MapPoint.cpp.o" \
"CMakeFiles/myslam.dir/Frame.cpp.o" \
"CMakeFiles/myslam.dir/dataset.cpp.o" \
"CMakeFiles/myslam.dir/FrontEnd.cpp.o" \
"CMakeFiles/myslam.dir/BackEnd.cpp.o" \
"CMakeFiles/myslam.dir/Convert.cpp.o" \
"CMakeFiles/myslam.dir/viewer.cpp.o"

# External object files for target myslam
myslam_EXTERNAL_OBJECTS =

../lib/libmyslam.so: src/CMakeFiles/myslam.dir/System.cpp.o
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/config.cpp.o
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/camera.cpp.o
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/Map.cpp.o
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/MapPoint.cpp.o
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/Frame.cpp.o
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/dataset.cpp.o
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/FrontEnd.cpp.o
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/BackEnd.cpp.o
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/Convert.cpp.o
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/viewer.cpp.o
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/build.make
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stitching3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_superres3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videostab3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_aruco3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bgsegm3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_bioinspired3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ccalib3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_cvv3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dpm3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_face3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_fuzzy3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_hdf3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_img_hash3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_line_descriptor3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_optflow3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_reg3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_rgbd3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_saliency3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_stereo3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_structured_light3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_surface_matching3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_tracking3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xfeatures2d3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ximgproc3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xobjdetect3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_xphoto3.so.3.3.1
../lib/libmyslam.so: /usr/local/lib/libpangolin.so
../lib/libmyslam.so: /usr/local/lib/libgtest.a
../lib/libmyslam.so: /usr/local/lib/libgtest_main.a
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libglog.so
../lib/libmyslam.so: /usr/local/lib/libgflags.a
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_shape3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_photo3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_datasets3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_plot3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_text3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_dnn3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_ml3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_video3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_calib3d3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_features2d3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_highgui3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_videoio3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_viz3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_phase_unwrapping3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_flann3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgcodecs3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_objdetect3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_imgproc3.so.3.3.1
../lib/libmyslam.so: /opt/ros/kinetic/lib/x86_64-linux-gnu/libopencv_core3.so.3.3.1
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libGL.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libGLU.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libGLEW.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libEGL.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libSM.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libICE.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libX11.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libXext.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libGL.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libGLU.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libGLEW.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libEGL.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libSM.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libICE.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libX11.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libXext.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libdc1394.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libavcodec.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libavformat.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libavutil.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libswscale.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libavdevice.so
../lib/libmyslam.so: /usr/lib/libOpenNI.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libpng.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libz.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libjpeg.so
../lib/libmyslam.so: /usr/lib/x86_64-linux-gnu/libtiff.so
../lib/libmyslam.so: /usr/local/lib/libgtest.a
../lib/libmyslam.so: src/CMakeFiles/myslam.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/user/sda4/Desktop/myslam/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_12) "Linking CXX shared library ../../lib/libmyslam.so"
	cd /home/user/sda4/Desktop/myslam/build/src && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/myslam.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
src/CMakeFiles/myslam.dir/build: ../lib/libmyslam.so
.PHONY : src/CMakeFiles/myslam.dir/build

src/CMakeFiles/myslam.dir/clean:
	cd /home/user/sda4/Desktop/myslam/build/src && $(CMAKE_COMMAND) -P CMakeFiles/myslam.dir/cmake_clean.cmake
.PHONY : src/CMakeFiles/myslam.dir/clean

src/CMakeFiles/myslam.dir/depend:
	cd /home/user/sda4/Desktop/myslam/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/user/sda4/Desktop/myslam /home/user/sda4/Desktop/myslam/src /home/user/sda4/Desktop/myslam/build /home/user/sda4/Desktop/myslam/build/src /home/user/sda4/Desktop/myslam/build/src/CMakeFiles/myslam.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : src/CMakeFiles/myslam.dir/depend


# CMAKE generated file: DO NOT EDIT!
# Generated by "MinGW Makefiles" Generator, CMake Version 3.15

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

SHELL = cmd.exe

# The CMake executable.
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.3.5\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.3.5\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\oguzn\CLionProjects\cost_function

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\oguzn\CLionProjects\cost_function\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/cost_function.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/cost_function.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/cost_function.dir/flags.make

CMakeFiles/cost_function.dir/main.cpp.obj: CMakeFiles/cost_function.dir/flags.make
CMakeFiles/cost_function.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\oguzn\CLionProjects\cost_function\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/cost_function.dir/main.cpp.obj"
	C:\MinGw\mingw32\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\cost_function.dir\main.cpp.obj -c C:\Users\oguzn\CLionProjects\cost_function\main.cpp

CMakeFiles/cost_function.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/cost_function.dir/main.cpp.i"
	C:\MinGw\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\oguzn\CLionProjects\cost_function\main.cpp > CMakeFiles\cost_function.dir\main.cpp.i

CMakeFiles/cost_function.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/cost_function.dir/main.cpp.s"
	C:\MinGw\mingw32\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\oguzn\CLionProjects\cost_function\main.cpp -o CMakeFiles\cost_function.dir\main.cpp.s

# Object files for target cost_function
cost_function_OBJECTS = \
"CMakeFiles/cost_function.dir/main.cpp.obj"

# External object files for target cost_function
cost_function_EXTERNAL_OBJECTS =

cost_function.exe: CMakeFiles/cost_function.dir/main.cpp.obj
cost_function.exe: CMakeFiles/cost_function.dir/build.make
cost_function.exe: CMakeFiles/cost_function.dir/linklibs.rsp
cost_function.exe: CMakeFiles/cost_function.dir/objects1.rsp
cost_function.exe: CMakeFiles/cost_function.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\oguzn\CLionProjects\cost_function\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable cost_function.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\cost_function.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/cost_function.dir/build: cost_function.exe

.PHONY : CMakeFiles/cost_function.dir/build

CMakeFiles/cost_function.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\cost_function.dir\cmake_clean.cmake
.PHONY : CMakeFiles/cost_function.dir/clean

CMakeFiles/cost_function.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\oguzn\CLionProjects\cost_function C:\Users\oguzn\CLionProjects\cost_function C:\Users\oguzn\CLionProjects\cost_function\cmake-build-debug C:\Users\oguzn\CLionProjects\cost_function\cmake-build-debug C:\Users\oguzn\CLionProjects\cost_function\cmake-build-debug\CMakeFiles\cost_function.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/cost_function.dir/depend

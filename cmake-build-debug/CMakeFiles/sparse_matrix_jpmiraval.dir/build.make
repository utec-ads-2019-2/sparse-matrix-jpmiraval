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
CMAKE_COMMAND = "C:\Program Files\JetBrains\CLion 2019.2.4\bin\cmake\win\bin\cmake.exe"

# The command to remove a file.
RM = "C:\Program Files\JetBrains\CLion 2019.2.4\bin\cmake\win\bin\cmake.exe" -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = C:\Users\HP\Documents\sparse-matrix-jpmiraval

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = C:\Users\HP\Documents\sparse-matrix-jpmiraval\cmake-build-debug

# Include any dependencies generated for this target.
include CMakeFiles/sparse_matrix_jpmiraval.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/sparse_matrix_jpmiraval.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/sparse_matrix_jpmiraval.dir/flags.make

CMakeFiles/sparse_matrix_jpmiraval.dir/mocker/mocker.cpp.obj: CMakeFiles/sparse_matrix_jpmiraval.dir/flags.make
CMakeFiles/sparse_matrix_jpmiraval.dir/mocker/mocker.cpp.obj: CMakeFiles/sparse_matrix_jpmiraval.dir/includes_CXX.rsp
CMakeFiles/sparse_matrix_jpmiraval.dir/mocker/mocker.cpp.obj: ../mocker/mocker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\HP\Documents\sparse-matrix-jpmiraval\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/sparse_matrix_jpmiraval.dir/mocker/mocker.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\sparse_matrix_jpmiraval.dir\mocker\mocker.cpp.obj -c C:\Users\HP\Documents\sparse-matrix-jpmiraval\mocker\mocker.cpp

CMakeFiles/sparse_matrix_jpmiraval.dir/mocker/mocker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sparse_matrix_jpmiraval.dir/mocker/mocker.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\Documents\sparse-matrix-jpmiraval\mocker\mocker.cpp > CMakeFiles\sparse_matrix_jpmiraval.dir\mocker\mocker.cpp.i

CMakeFiles/sparse_matrix_jpmiraval.dir/mocker/mocker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sparse_matrix_jpmiraval.dir/mocker/mocker.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\Documents\sparse-matrix-jpmiraval\mocker\mocker.cpp -o CMakeFiles\sparse_matrix_jpmiraval.dir\mocker\mocker.cpp.s

CMakeFiles/sparse_matrix_jpmiraval.dir/tester/tester.cpp.obj: CMakeFiles/sparse_matrix_jpmiraval.dir/flags.make
CMakeFiles/sparse_matrix_jpmiraval.dir/tester/tester.cpp.obj: CMakeFiles/sparse_matrix_jpmiraval.dir/includes_CXX.rsp
CMakeFiles/sparse_matrix_jpmiraval.dir/tester/tester.cpp.obj: ../tester/tester.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\HP\Documents\sparse-matrix-jpmiraval\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/sparse_matrix_jpmiraval.dir/tester/tester.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\sparse_matrix_jpmiraval.dir\tester\tester.cpp.obj -c C:\Users\HP\Documents\sparse-matrix-jpmiraval\tester\tester.cpp

CMakeFiles/sparse_matrix_jpmiraval.dir/tester/tester.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sparse_matrix_jpmiraval.dir/tester/tester.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\Documents\sparse-matrix-jpmiraval\tester\tester.cpp > CMakeFiles\sparse_matrix_jpmiraval.dir\tester\tester.cpp.i

CMakeFiles/sparse_matrix_jpmiraval.dir/tester/tester.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sparse_matrix_jpmiraval.dir/tester/tester.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\Documents\sparse-matrix-jpmiraval\tester\tester.cpp -o CMakeFiles\sparse_matrix_jpmiraval.dir\tester\tester.cpp.s

CMakeFiles/sparse_matrix_jpmiraval.dir/main.cpp.obj: CMakeFiles/sparse_matrix_jpmiraval.dir/flags.make
CMakeFiles/sparse_matrix_jpmiraval.dir/main.cpp.obj: CMakeFiles/sparse_matrix_jpmiraval.dir/includes_CXX.rsp
CMakeFiles/sparse_matrix_jpmiraval.dir/main.cpp.obj: ../main.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=C:\Users\HP\Documents\sparse-matrix-jpmiraval\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/sparse_matrix_jpmiraval.dir/main.cpp.obj"
	C:\MinGW\bin\g++.exe  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles\sparse_matrix_jpmiraval.dir\main.cpp.obj -c C:\Users\HP\Documents\sparse-matrix-jpmiraval\main.cpp

CMakeFiles/sparse_matrix_jpmiraval.dir/main.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/sparse_matrix_jpmiraval.dir/main.cpp.i"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E C:\Users\HP\Documents\sparse-matrix-jpmiraval\main.cpp > CMakeFiles\sparse_matrix_jpmiraval.dir\main.cpp.i

CMakeFiles/sparse_matrix_jpmiraval.dir/main.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/sparse_matrix_jpmiraval.dir/main.cpp.s"
	C:\MinGW\bin\g++.exe $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S C:\Users\HP\Documents\sparse-matrix-jpmiraval\main.cpp -o CMakeFiles\sparse_matrix_jpmiraval.dir\main.cpp.s

# Object files for target sparse_matrix_jpmiraval
sparse_matrix_jpmiraval_OBJECTS = \
"CMakeFiles/sparse_matrix_jpmiraval.dir/mocker/mocker.cpp.obj" \
"CMakeFiles/sparse_matrix_jpmiraval.dir/tester/tester.cpp.obj" \
"CMakeFiles/sparse_matrix_jpmiraval.dir/main.cpp.obj"

# External object files for target sparse_matrix_jpmiraval
sparse_matrix_jpmiraval_EXTERNAL_OBJECTS =

sparse_matrix_jpmiraval.exe: CMakeFiles/sparse_matrix_jpmiraval.dir/mocker/mocker.cpp.obj
sparse_matrix_jpmiraval.exe: CMakeFiles/sparse_matrix_jpmiraval.dir/tester/tester.cpp.obj
sparse_matrix_jpmiraval.exe: CMakeFiles/sparse_matrix_jpmiraval.dir/main.cpp.obj
sparse_matrix_jpmiraval.exe: CMakeFiles/sparse_matrix_jpmiraval.dir/build.make
sparse_matrix_jpmiraval.exe: CMakeFiles/sparse_matrix_jpmiraval.dir/linklibs.rsp
sparse_matrix_jpmiraval.exe: CMakeFiles/sparse_matrix_jpmiraval.dir/objects1.rsp
sparse_matrix_jpmiraval.exe: CMakeFiles/sparse_matrix_jpmiraval.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=C:\Users\HP\Documents\sparse-matrix-jpmiraval\cmake-build-debug\CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Linking CXX executable sparse_matrix_jpmiraval.exe"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles\sparse_matrix_jpmiraval.dir\link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/sparse_matrix_jpmiraval.dir/build: sparse_matrix_jpmiraval.exe

.PHONY : CMakeFiles/sparse_matrix_jpmiraval.dir/build

CMakeFiles/sparse_matrix_jpmiraval.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles\sparse_matrix_jpmiraval.dir\cmake_clean.cmake
.PHONY : CMakeFiles/sparse_matrix_jpmiraval.dir/clean

CMakeFiles/sparse_matrix_jpmiraval.dir/depend:
	$(CMAKE_COMMAND) -E cmake_depends "MinGW Makefiles" C:\Users\HP\Documents\sparse-matrix-jpmiraval C:\Users\HP\Documents\sparse-matrix-jpmiraval C:\Users\HP\Documents\sparse-matrix-jpmiraval\cmake-build-debug C:\Users\HP\Documents\sparse-matrix-jpmiraval\cmake-build-debug C:\Users\HP\Documents\sparse-matrix-jpmiraval\cmake-build-debug\CMakeFiles\sparse_matrix_jpmiraval.dir\DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/sparse_matrix_jpmiraval.dir/depend


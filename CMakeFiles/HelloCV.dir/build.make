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
CMAKE_COMMAND = /usr/local/Cellar/cmake/2.8.7/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/2.8.7/bin/cmake -E remove -f

# The program to use to edit the cache.
CMAKE_EDIT_COMMAND = /usr/local/Cellar/cmake/2.8.7/bin/ccmake

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/teebone/git_projects/CUDA_works

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/teebone/git_projects/CUDA_works

# Include any dependencies generated for this target.
include CMakeFiles/HelloCV.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/HelloCV.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/HelloCV.dir/flags.make

CMakeFiles/HelloCV.dir/main.o: CMakeFiles/HelloCV.dir/flags.make
CMakeFiles/HelloCV.dir/main.o: main.cpp
	$(CMAKE_COMMAND) -E cmake_progress_report /Users/teebone/git_projects/CUDA_works/CMakeFiles $(CMAKE_PROGRESS_1)
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Building CXX object CMakeFiles/HelloCV.dir/main.o"
	/usr/bin/c++   $(CXX_DEFINES) $(CXX_FLAGS) -o CMakeFiles/HelloCV.dir/main.o -c /Users/teebone/git_projects/CUDA_works/main.cpp

CMakeFiles/HelloCV.dir/main.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/HelloCV.dir/main.i"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -E /Users/teebone/git_projects/CUDA_works/main.cpp > CMakeFiles/HelloCV.dir/main.i

CMakeFiles/HelloCV.dir/main.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/HelloCV.dir/main.s"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_FLAGS) -S /Users/teebone/git_projects/CUDA_works/main.cpp -o CMakeFiles/HelloCV.dir/main.s

CMakeFiles/HelloCV.dir/main.o.requires:
.PHONY : CMakeFiles/HelloCV.dir/main.o.requires

CMakeFiles/HelloCV.dir/main.o.provides: CMakeFiles/HelloCV.dir/main.o.requires
	$(MAKE) -f CMakeFiles/HelloCV.dir/build.make CMakeFiles/HelloCV.dir/main.o.provides.build
.PHONY : CMakeFiles/HelloCV.dir/main.o.provides

CMakeFiles/HelloCV.dir/main.o.provides.build: CMakeFiles/HelloCV.dir/main.o

# Object files for target HelloCV
HelloCV_OBJECTS = \
"CMakeFiles/HelloCV.dir/main.o"

# External object files for target HelloCV
HelloCV_EXTERNAL_OBJECTS =

HelloCV: CMakeFiles/HelloCV.dir/main.o
HelloCV: CMakeFiles/HelloCV.dir/build.make
HelloCV: CMakeFiles/HelloCV.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --red --bold "Linking CXX executable HelloCV"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/HelloCV.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/HelloCV.dir/build: HelloCV
.PHONY : CMakeFiles/HelloCV.dir/build

CMakeFiles/HelloCV.dir/requires: CMakeFiles/HelloCV.dir/main.o.requires
.PHONY : CMakeFiles/HelloCV.dir/requires

CMakeFiles/HelloCV.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/HelloCV.dir/cmake_clean.cmake
.PHONY : CMakeFiles/HelloCV.dir/clean

CMakeFiles/HelloCV.dir/depend:
	cd /Users/teebone/git_projects/CUDA_works && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/teebone/git_projects/CUDA_works /Users/teebone/git_projects/CUDA_works /Users/teebone/git_projects/CUDA_works /Users/teebone/git_projects/CUDA_works /Users/teebone/git_projects/CUDA_works/CMakeFiles/HelloCV.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/HelloCV.dir/depend


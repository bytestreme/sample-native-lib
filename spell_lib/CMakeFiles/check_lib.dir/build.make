# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/username/clion/bin/cmake/linux/bin/cmake

# The command to remove a file.
RM = /home/username/clion/bin/cmake/linux/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/username/spell_gsoc/spell_lib

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/username/spell_gsoc/spell_lib

# Include any dependencies generated for this target.
include CMakeFiles/check_lib.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/check_lib.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/check_lib.dir/flags.make

CMakeFiles/check_lib.dir/checker.cpp.o: CMakeFiles/check_lib.dir/flags.make
CMakeFiles/check_lib.dir/checker.cpp.o: checker.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/username/spell_gsoc/spell_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/check_lib.dir/checker.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/check_lib.dir/checker.cpp.o -c /home/username/spell_gsoc/spell_lib/checker.cpp

CMakeFiles/check_lib.dir/checker.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/check_lib.dir/checker.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/username/spell_gsoc/spell_lib/checker.cpp > CMakeFiles/check_lib.dir/checker.cpp.i

CMakeFiles/check_lib.dir/checker.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/check_lib.dir/checker.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/username/spell_gsoc/spell_lib/checker.cpp -o CMakeFiles/check_lib.dir/checker.cpp.s

# Object files for target check_lib
check_lib_OBJECTS = \
"CMakeFiles/check_lib.dir/checker.cpp.o"

# External object files for target check_lib
check_lib_EXTERNAL_OBJECTS =

libcheck_lib.so: CMakeFiles/check_lib.dir/checker.cpp.o
libcheck_lib.so: CMakeFiles/check_lib.dir/build.make
libcheck_lib.so: /usr/local/lib/libnuspell.a
libcheck_lib.so: /usr/lib/x86_64-linux-gnu/libicuuc.so
libcheck_lib.so: /usr/lib/x86_64-linux-gnu/libicudata.so
libcheck_lib.so: checker.def
libcheck_lib.so: CMakeFiles/check_lib.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/username/spell_gsoc/spell_lib/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX shared library libcheck_lib.so"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/check_lib.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/check_lib.dir/build: libcheck_lib.so

.PHONY : CMakeFiles/check_lib.dir/build

CMakeFiles/check_lib.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/check_lib.dir/cmake_clean.cmake
.PHONY : CMakeFiles/check_lib.dir/clean

CMakeFiles/check_lib.dir/depend:
	cd /home/username/spell_gsoc/spell_lib && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/username/spell_gsoc/spell_lib /home/username/spell_gsoc/spell_lib /home/username/spell_gsoc/spell_lib /home/username/spell_gsoc/spell_lib /home/username/spell_gsoc/spell_lib/CMakeFiles/check_lib.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/check_lib.dir/depend


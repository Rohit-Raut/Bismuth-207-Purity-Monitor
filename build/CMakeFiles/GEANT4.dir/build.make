# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.29

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
CMAKE_COMMAND = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake

# The command to remove a file.
RM = /opt/homebrew/Cellar/cmake/3.29.5/bin/cmake -E rm -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/rohit/Research/Bismuth_sim/Purity_Geant4

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/rohit/Research/Bismuth_sim/Purity_Geant4/build

# Include any dependencies generated for this target.
include CMakeFiles/GEANT4.dir/depend.make
# Include any dependencies generated by the compiler for this target.
include CMakeFiles/GEANT4.dir/compiler_depend.make

# Include the progress variables for this target.
include CMakeFiles/GEANT4.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/GEANT4.dir/flags.make

CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.o: CMakeFiles/GEANT4.dir/flags.make
CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.o: /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/DetectorConstruction.cc
CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.o: CMakeFiles/GEANT4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rohit/Research/Bismuth_sim/Purity_Geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.o -MF CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.o.d -o CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.o -c /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/DetectorConstruction.cc

CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/DetectorConstruction.cc > CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.i

CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/DetectorConstruction.cc -o CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.s

CMakeFiles/GEANT4.dir/src/PhysicsList.cc.o: CMakeFiles/GEANT4.dir/flags.make
CMakeFiles/GEANT4.dir/src/PhysicsList.cc.o: /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/PhysicsList.cc
CMakeFiles/GEANT4.dir/src/PhysicsList.cc.o: CMakeFiles/GEANT4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rohit/Research/Bismuth_sim/Purity_Geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/GEANT4.dir/src/PhysicsList.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GEANT4.dir/src/PhysicsList.cc.o -MF CMakeFiles/GEANT4.dir/src/PhysicsList.cc.o.d -o CMakeFiles/GEANT4.dir/src/PhysicsList.cc.o -c /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/PhysicsList.cc

CMakeFiles/GEANT4.dir/src/PhysicsList.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GEANT4.dir/src/PhysicsList.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/PhysicsList.cc > CMakeFiles/GEANT4.dir/src/PhysicsList.cc.i

CMakeFiles/GEANT4.dir/src/PhysicsList.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GEANT4.dir/src/PhysicsList.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/PhysicsList.cc -o CMakeFiles/GEANT4.dir/src/PhysicsList.cc.s

CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/GEANT4.dir/flags.make
CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.o: /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/PrimaryGeneratorAction.cc
CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.o: CMakeFiles/GEANT4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rohit/Research/Bismuth_sim/Purity_Geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.o -MF CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.o.d -o CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.o -c /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/PrimaryGeneratorAction.cc

CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/PrimaryGeneratorAction.cc > CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.i

CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/PrimaryGeneratorAction.cc -o CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.s

CMakeFiles/GEANT4.dir/src/EventAction.cc.o: CMakeFiles/GEANT4.dir/flags.make
CMakeFiles/GEANT4.dir/src/EventAction.cc.o: /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/EventAction.cc
CMakeFiles/GEANT4.dir/src/EventAction.cc.o: CMakeFiles/GEANT4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rohit/Research/Bismuth_sim/Purity_Geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/GEANT4.dir/src/EventAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GEANT4.dir/src/EventAction.cc.o -MF CMakeFiles/GEANT4.dir/src/EventAction.cc.o.d -o CMakeFiles/GEANT4.dir/src/EventAction.cc.o -c /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/EventAction.cc

CMakeFiles/GEANT4.dir/src/EventAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GEANT4.dir/src/EventAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/EventAction.cc > CMakeFiles/GEANT4.dir/src/EventAction.cc.i

CMakeFiles/GEANT4.dir/src/EventAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GEANT4.dir/src/EventAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/EventAction.cc -o CMakeFiles/GEANT4.dir/src/EventAction.cc.s

CMakeFiles/GEANT4.dir/src/HistoManager.cc.o: CMakeFiles/GEANT4.dir/flags.make
CMakeFiles/GEANT4.dir/src/HistoManager.cc.o: /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/HistoManager.cc
CMakeFiles/GEANT4.dir/src/HistoManager.cc.o: CMakeFiles/GEANT4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rohit/Research/Bismuth_sim/Purity_Geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/GEANT4.dir/src/HistoManager.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GEANT4.dir/src/HistoManager.cc.o -MF CMakeFiles/GEANT4.dir/src/HistoManager.cc.o.d -o CMakeFiles/GEANT4.dir/src/HistoManager.cc.o -c /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/HistoManager.cc

CMakeFiles/GEANT4.dir/src/HistoManager.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GEANT4.dir/src/HistoManager.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/HistoManager.cc > CMakeFiles/GEANT4.dir/src/HistoManager.cc.i

CMakeFiles/GEANT4.dir/src/HistoManager.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GEANT4.dir/src/HistoManager.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/HistoManager.cc -o CMakeFiles/GEANT4.dir/src/HistoManager.cc.s

CMakeFiles/GEANT4.dir/src/RunAction.cc.o: CMakeFiles/GEANT4.dir/flags.make
CMakeFiles/GEANT4.dir/src/RunAction.cc.o: /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/RunAction.cc
CMakeFiles/GEANT4.dir/src/RunAction.cc.o: CMakeFiles/GEANT4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rohit/Research/Bismuth_sim/Purity_Geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Building CXX object CMakeFiles/GEANT4.dir/src/RunAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GEANT4.dir/src/RunAction.cc.o -MF CMakeFiles/GEANT4.dir/src/RunAction.cc.o.d -o CMakeFiles/GEANT4.dir/src/RunAction.cc.o -c /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/RunAction.cc

CMakeFiles/GEANT4.dir/src/RunAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GEANT4.dir/src/RunAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/RunAction.cc > CMakeFiles/GEANT4.dir/src/RunAction.cc.i

CMakeFiles/GEANT4.dir/src/RunAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GEANT4.dir/src/RunAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/RunAction.cc -o CMakeFiles/GEANT4.dir/src/RunAction.cc.s

CMakeFiles/GEANT4.dir/src/SteppingAction.cc.o: CMakeFiles/GEANT4.dir/flags.make
CMakeFiles/GEANT4.dir/src/SteppingAction.cc.o: /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/SteppingAction.cc
CMakeFiles/GEANT4.dir/src/SteppingAction.cc.o: CMakeFiles/GEANT4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rohit/Research/Bismuth_sim/Purity_Geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_7) "Building CXX object CMakeFiles/GEANT4.dir/src/SteppingAction.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GEANT4.dir/src/SteppingAction.cc.o -MF CMakeFiles/GEANT4.dir/src/SteppingAction.cc.o.d -o CMakeFiles/GEANT4.dir/src/SteppingAction.cc.o -c /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/SteppingAction.cc

CMakeFiles/GEANT4.dir/src/SteppingAction.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GEANT4.dir/src/SteppingAction.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/SteppingAction.cc > CMakeFiles/GEANT4.dir/src/SteppingAction.cc.i

CMakeFiles/GEANT4.dir/src/SteppingAction.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GEANT4.dir/src/SteppingAction.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rohit/Research/Bismuth_sim/Purity_Geant4/src/SteppingAction.cc -o CMakeFiles/GEANT4.dir/src/SteppingAction.cc.s

CMakeFiles/GEANT4.dir/main.cc.o: CMakeFiles/GEANT4.dir/flags.make
CMakeFiles/GEANT4.dir/main.cc.o: /Users/rohit/Research/Bismuth_sim/Purity_Geant4/main.cc
CMakeFiles/GEANT4.dir/main.cc.o: CMakeFiles/GEANT4.dir/compiler_depend.ts
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --progress-dir=/Users/rohit/Research/Bismuth_sim/Purity_Geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_8) "Building CXX object CMakeFiles/GEANT4.dir/main.cc.o"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -MD -MT CMakeFiles/GEANT4.dir/main.cc.o -MF CMakeFiles/GEANT4.dir/main.cc.o.d -o CMakeFiles/GEANT4.dir/main.cc.o -c /Users/rohit/Research/Bismuth_sim/Purity_Geant4/main.cc

CMakeFiles/GEANT4.dir/main.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Preprocessing CXX source to CMakeFiles/GEANT4.dir/main.cc.i"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/rohit/Research/Bismuth_sim/Purity_Geant4/main.cc > CMakeFiles/GEANT4.dir/main.cc.i

CMakeFiles/GEANT4.dir/main.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green "Compiling CXX source to assembly CMakeFiles/GEANT4.dir/main.cc.s"
	/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/rohit/Research/Bismuth_sim/Purity_Geant4/main.cc -o CMakeFiles/GEANT4.dir/main.cc.s

# Object files for target GEANT4
GEANT4_OBJECTS = \
"CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.o" \
"CMakeFiles/GEANT4.dir/src/PhysicsList.cc.o" \
"CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.o" \
"CMakeFiles/GEANT4.dir/src/EventAction.cc.o" \
"CMakeFiles/GEANT4.dir/src/HistoManager.cc.o" \
"CMakeFiles/GEANT4.dir/src/RunAction.cc.o" \
"CMakeFiles/GEANT4.dir/src/SteppingAction.cc.o" \
"CMakeFiles/GEANT4.dir/main.cc.o"

# External object files for target GEANT4
GEANT4_EXTERNAL_OBJECTS =

bin/GEANT4: CMakeFiles/GEANT4.dir/src/DetectorConstruction.cc.o
bin/GEANT4: CMakeFiles/GEANT4.dir/src/PhysicsList.cc.o
bin/GEANT4: CMakeFiles/GEANT4.dir/src/PrimaryGeneratorAction.cc.o
bin/GEANT4: CMakeFiles/GEANT4.dir/src/EventAction.cc.o
bin/GEANT4: CMakeFiles/GEANT4.dir/src/HistoManager.cc.o
bin/GEANT4: CMakeFiles/GEANT4.dir/src/RunAction.cc.o
bin/GEANT4: CMakeFiles/GEANT4.dir/src/SteppingAction.cc.o
bin/GEANT4: CMakeFiles/GEANT4.dir/main.cc.o
bin/GEANT4: CMakeFiles/GEANT4.dir/build.make
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4Tree.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4FR.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4GMocren.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4visHepRep.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4RayTracer.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4VRML.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4ToolsSG.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4OpenGL.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4visQt3D.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4vis_management.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4modeling.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4interfaces.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4mctruth.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4geomtext.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4gdml.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4error_propagation.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4readout.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4physicslists.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4run.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4event.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4tracking.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4parmodels.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4processes.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4digits_hits.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4track.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4particles.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4geometry.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4materials.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4graphics_reps.dylib
bin/GEANT4: /opt/homebrew/Cellar/qt@5/5.15.13_1/lib/QtWidgets.framework/QtWidgets
bin/GEANT4: /opt/homebrew/Cellar/qt@5/5.15.13_1/lib/QtGui.framework/QtGui
bin/GEANT4: /opt/homebrew/Cellar/qt@5/5.15.13_1/lib/QtCore.framework/QtCore
bin/GEANT4: /opt/homebrew/lib/libxerces-c.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4analysis.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4expat.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4zlib.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4intercoms.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4global.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4clhep.dylib
bin/GEANT4: /Users/rohit/geant4-v11.3.0-install/lib/libG4ptl.3.0.0.dylib
bin/GEANT4: CMakeFiles/GEANT4.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color "--switch=$(COLOR)" --green --bold --progress-dir=/Users/rohit/Research/Bismuth_sim/Purity_Geant4/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_9) "Linking CXX executable bin/GEANT4"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/GEANT4.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/GEANT4.dir/build: bin/GEANT4
.PHONY : CMakeFiles/GEANT4.dir/build

CMakeFiles/GEANT4.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/GEANT4.dir/cmake_clean.cmake
.PHONY : CMakeFiles/GEANT4.dir/clean

CMakeFiles/GEANT4.dir/depend:
	cd /Users/rohit/Research/Bismuth_sim/Purity_Geant4/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/rohit/Research/Bismuth_sim/Purity_Geant4 /Users/rohit/Research/Bismuth_sim/Purity_Geant4 /Users/rohit/Research/Bismuth_sim/Purity_Geant4/build /Users/rohit/Research/Bismuth_sim/Purity_Geant4/build /Users/rohit/Research/Bismuth_sim/Purity_Geant4/build/CMakeFiles/GEANT4.dir/DependInfo.cmake "--color=$(COLOR)"
.PHONY : CMakeFiles/GEANT4.dir/depend


# sample-native-lib

## Two Dart console applications:
* #### check.dart 
Uses **Nuspell** C++ library to make spell checking. (https://github.com/nuspell/nuspell)
    
Usage:
   1. Install Nuspell as in https://github.com/nuspell/nuspell README
   2. Note: To allow future dynamic linking, before doing `cmake .` add into `CMakeLists.txt` of the Nuspell the following  
`add_definitions("-fPIC")`
   3. Then, build the library with `cmake .` and `make`
   4. Run Dart file with the word as the only argument like `dart checker.dart coding`

* #### consume_header.dart 
Uses **libclang** library to make spell checking. (https://github.com/nuspell/nuspell)
    
Usage:
   1. Install **llvm** with **clang**
   2. Note: in the `/lib_parse/CMakeLists.txt` set the correct path of your **libclang.so** to `libclang_path` variable
   3. Then, build the library with `cmake .` and `make`
   4. Run Dart file with the header file name as the only argument like `dart checker.dart header.h`


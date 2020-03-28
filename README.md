# sample-native-lib
install Nuspell https://github.com/nuspell/nuspell

Note! to allow creation of dynamic library compile it with "-fPIC". 
I made it by adding  

SET(B_FLAG "-fPIC")
add_definitions(${B_FLAG})

into CMakeLists.txt of the Nuspell

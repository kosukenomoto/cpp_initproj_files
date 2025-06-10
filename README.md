# MyProjectName
Project desc

# Feature
 - Feature1
 - Feature2
 - Feature3

## TODO
 - [ ] todo1
 - [ ] todo2

## Workspace Setup
shift+ctrl+p and, cmake select a kit "gcc 14.2...." for used ninja
```
$ cmake -S . -B build -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
$ cmake --build build
$ cd build && ctest
```

## Build & Test
```
$ cmake -B build -S .
$ cmake --build build
$ cd build && ctest
```

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
```
$cmake -S . -B build -G Ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=ON
$ cmake --build build
$ cd build && ctest
```

## Build & Test
```
$ cmake -B build -S .
$ cmake --build build
$ cd build && ctest
```

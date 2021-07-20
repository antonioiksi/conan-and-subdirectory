# Example using conan and add_subdirectory together

> Requirements:
> * macos
> * clang

gcc on macos failed, but file (conan profile and cmake still not deleted)


## 
```sh
make build
```


## Install yaml
```sh
git submodule add --branch master --name yaml-cpp git@github.com:jbeder/yaml-cpp.git ext/yaml-cpp
cd ext/yaml-cpp
git checkout yaml-cpp-0.7.0
cd ../../ 
git submodule status

git submodule set-branch --branch yaml-cpp-0.7.0 yaml-cpp
```

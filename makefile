# Makefile
# for using `source` in  install
SHELL := /bin/bash

.PHONY: build
clean:
	rm -rf build && mkdir build && cd build

build:
	mkdir build;\
	cd build && \
	conan install .. --build=missing --profile ../clang.profile && \
	cmake -DCMAKE_TOOLCHAIN_FILE=../clang.cmake -DCMAKE_BUILD_TYPE=Release .. && \
	cmake --build . --config Release

clean-conan: 
	rm -rf ~/.conan/data
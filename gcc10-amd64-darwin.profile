[settings]
os=Macos
arch=x86_64
compiler=gcc
compiler.version=10
compiler.libcxx=libstdc++11
# compiler.libcxx=libstdc++
build_type=Release

bzip2:compiler=apple-clang
bzip2:compiler.version=12.0
bzip2:compiler.libcxx=libstdc++

zlib:compiler=apple-clang
zlib:compiler.version=12.0
zlib:compiler.libcxx=libstdc++


boost:compiler=apple-clang
boost:compiler.version=12.0
boost:compiler.libcxx=libstdc++

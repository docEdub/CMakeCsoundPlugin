include_guard()

# NB: Include this file before calling `project(...)` in CMakeLists.txt, so the vcpkg toolchain gets used.

message(STATUS "Fetching vcpkg")
include(FetchContent)
FetchContent_Declare(
    vcpkg
    URL https://github.com/microsoft/vcpkg/archive/refs/tags/2024.04.26.tar.gz
    URL_MD5 0c453e093366fa60585ce5f5fc3965c4
    DOWNLOAD_DIR "${FETCHCONTENT_BASE_DIR}/vcpkg"
    DOWNLOAD_EXTRACT_TIMESTAMP true
)
FetchContent_MakeAvailable(vcpkg)
message(STATUS "Fetching vcpkg - done")

set(VCPKG_ROOT "${vcpkg_SOURCE_DIR}")
set(CMAKE_TOOLCHAIN_FILE "${VCPKG_ROOT}/scripts/buildsystems/vcpkg.cmake")
set(X_VCPKG_APPLOCAL_DEPS_INSTALL ON CACHE BOOL "" FORCE)

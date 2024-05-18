
if(EXISTS "${CMAKE_SOURCE_DIR}/vcpkg.json")
    message("Using vcpkg toolchain")
    include("vcpkg.cmake")
endif()

fetch_dependency(
    NAME CsoundTesting
    GIT_REPOSITORY git@github.com:docEdub/CsoundTesting.git
    GIT_TAG f85537fb1357c5f82386a543f729d991ce9ac01d
)

set(CSOUND_TESTING_DIR "${csoundtesting_SOURCE_DIR}" PARENT_SCOPE)

list(APPEND CMAKE_PROJECT_TOP_LEVEL_INCLUDES "${CMAKE_CURRENT_LIST_DIR}/csound-plugin.cmake")

set(CMakeCsoundPlugin_DIR "${CMAKE_CURRENT_LIST_DIR}" PARENT_SCOPE)
set(CMAKE_TOOLCHAIN_FILE "${CMAKE_TOOLCHAIN_FILE}" PARENT_SCOPE)
set(CMAKE_PROJECT_TOP_LEVEL_INCLUDES ${CMAKE_PROJECT_TOP_LEVEL_INCLUDES} PARENT_SCOPE)


if(NOT TEST_ORC)
    message(FATAL_ERROR "TEST_ORC is not set")
endif()
if(NOT CSOUND_TESTING_DIR)
    message(FATAL_ERROR "CSOUND_TESTING_DIR is not set")
endif()

execute_process(COMMAND ${CMAKE_COMMAND} -E copy ${TEST_ORC} ${CSOUND_TESTING_DIR}/test.orc)
execute_process(COMMAND csound ${CSOUND_TESTING_DIR}/test.csd)

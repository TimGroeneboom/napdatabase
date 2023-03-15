# Bring in SQLite from thirdparty
find_package(sqlite REQUIRED)

target_include_directories(${PROJECT_NAME} PUBLIC ${SQLITE_INCLUDE_DIR})
target_link_libraries(${PROJECT_NAME} sqlite)

if(NAP_BUILD_CONTEXT MATCHES "framework_release")
    install(FILES ${SQLITE_LICENSE_FILES} DESTINATION licenses/sqlite)
endif()

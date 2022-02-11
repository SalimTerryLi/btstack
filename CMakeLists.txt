cmake_minimum_required(VERSION 3.8)

if(ESP_PLATFORM)
  include(${CMAKE_CURRENT_LIST_DIR}/port/esp32/component.cmake)
endif()

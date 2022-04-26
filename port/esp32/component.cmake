set(IDF_PATH $ENV{IDF_PATH})
if (CMAKE_HOST_WIN32)
    string(REPLACE "\\" "/" IDF_PATH $ENV{IDF_PATH})
endif()

set(include_dirs "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/bluedroid/decoder/include"
                 "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/bluedroid/encoder/include"
                 "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/hxcmod-player"
                 "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/hxcmod-player/mods"
                 "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/lc3-google/include"
                 "${IDF_PATH}/components/lwip/lwip/src/include"
                 "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/lwip/dhcp-server"
                 "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/md5"
                 "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/yxml"
                 "${CMAKE_CURRENT_SOURCE_DIR}/src/classic"
                 "${CMAKE_CURRENT_SOURCE_DIR}/src/ble/gatt-service"
                 "${CMAKE_CURRENT_SOURCE_DIR}/src/ble"
                 "${CMAKE_CURRENT_SOURCE_DIR}/src/classic"
                 "${CMAKE_CURRENT_SOURCE_DIR}/src"
                 "${CMAKE_CURRENT_SOURCE_DIR}/platform/embedded"
                 "${CMAKE_CURRENT_SOURCE_DIR}/platform/freertos"
                 "${CMAKE_CURRENT_SOURCE_DIR}/platform/lwip"
                 "${CMAKE_CURRENT_LIST_DIR}/include")

set(src_dirs "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/bluedroid/decoder/srce"
             "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/bluedroid/encoder/srce"
             "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/hxcmod-player"
             "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/hxcmod-player/mods"
             "${IDF_PATH}/components/lwip/lwip/src/apps/http"
             "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/md5"
             "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/micro-ecc"
             "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/lwip/dhcp-server"
             "${CMAKE_CURRENT_SOURCE_DIR}/src/ble/gatt-service"
             "${CMAKE_CURRENT_SOURCE_DIR}/src/ble"
             "${CMAKE_CURRENT_SOURCE_DIR}/src/classic"
             "${CMAKE_CURRENT_SOURCE_DIR}/src/mesh"
             "${CMAKE_CURRENT_SOURCE_DIR}/src/"
             "${CMAKE_CURRENT_SOURCE_DIR}/platform/freertos"
             "${CMAKE_CURRENT_SOURCE_DIR}/platform/lwip"
             "${CMAKE_CURRENT_LIST_DIR}/src")

set(priv_include_dirs
        "${CMAKE_CURRENT_SOURCE_DIR}/3rd-party/micro-ecc"
        )

set(priv_requires
        "nvs_flash"
        "bt"
        "lwip"
        )

idf_component_register(SRC_DIRS "${src_dirs}"
                    INCLUDE_DIRS "${include_dirs}"
                    PRIV_INCLUDE_DIRS "${priv_include_dirs}"
                    PRIV_REQUIRES ${priv_requires})

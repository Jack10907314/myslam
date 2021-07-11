add_library(myslam SHARED
        FrontEnd.cpp
        System.cpp
        BackEnd.cpp
        config.cpp
        camera.cpp
        Map.cpp
        MapPoint.cpp
        Frame.cpp
        dataset.cpp
        )

target_link_libraries(myslam ${THIRD_PARTY_LIBS})
add_library(myslam SHARED
        System.cpp
        config.cpp
        camera.cpp
        Map.cpp
        MapPoint.cpp
        Frame.cpp
        dataset.cpp
        FrontEnd.cpp
        BackEnd.cpp
        )

target_link_libraries(myslam ${THIRD_PARTY_LIBS})
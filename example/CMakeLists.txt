add_executable(stereo_kitti stereo_kitti.cpp)
target_link_libraries(stereo_kitti myslam ${THIRD_PARTY_LIBS})
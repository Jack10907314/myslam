#pragma once

#include "Include.h"

namespace myslam{

class Convert{

public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    static SE3 toSE3(cv::Mat R, cv::Mat t);
    static cv::Point3f toPoint3f(Vec3 position);
    static cv::Mat Get_R(SE3 pose);
    static cv::Mat Get_t(SE3 pose);
};

}
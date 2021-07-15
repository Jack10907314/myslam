#pragma once

#include "Include.h"

namespace myslam{

class Convert{

public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    static SE3 toSE3(cv::Mat R, cv::Mat t);
};

}
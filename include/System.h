#pragma once

#include "Include.h"

namespace myslam{

class VO{
public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    typedef std::shared_ptr<VO> Ptr;
    void Initial();
    void Run();
};
}
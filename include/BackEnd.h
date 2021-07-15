#pragma once

#include "Include.h"
#include "Frame.h"
#include "camera.h"
#include "FrontEnd.h"

namespace myslam{
    
class FrontEnd;
class Map;
class BackEnd{
public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    typedef std::shared_ptr<BackEnd> Ptr;

    void ThreadLoop();
    void Stop();
private:
    Map::Ptr map_ = nullptr;
    std::shared_ptr<FrontEnd> frontend_ = nullptr;
};

}

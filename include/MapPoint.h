#pragma once

#include "Include.h"
#include "Frame.h"
#include "camera.h"
#include "Map.h"
#include "FrontEnd.h"

namespace myslam{

class MapPoint{
public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    typedef std::shared_ptr<MapPoint> Ptr;
private:

};

}
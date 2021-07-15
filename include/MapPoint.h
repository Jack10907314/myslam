#pragma once

#include "Include.h"
#include "Frame.h"

namespace myslam{

class MapPoint{
public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    typedef std::shared_ptr<MapPoint> Ptr;

    MapPoint(Vec3 position);
    void SetPosition(Vec3 position);
    Vec3 GetPosition();
    void AddFrameObserve(Frame::Ptr framePtr);

    unsigned long id_;
    std::mutex dataMutex_;
private:
    Vec3 position_ = Vec3::Zero();
    std::vector<Frame::Ptr> frameObserve_;
};

}
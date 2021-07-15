#pragma once

#include "Include.h"
#include "Frame.h"
#include "MapPoint.h"

namespace myslam{

class Map{
public:
    EIGEN_MAKE_ALIGNED_OPERATOR_NEW;
    typedef std::shared_ptr<Map> Ptr;
    typedef std::vector<Frame::Ptr> KeyFramesType;
    typedef std::vector<MapPoint::Ptr> MapPointsType;
    
    
    Map();
    void AddKeyFrame(Frame::Ptr newKeyFrame);
    void AddMapPoint(MapPoint::Ptr newMapPoint);
    KeyFramesType GetKeyFrames();
    MapPointsType GetMapPoints();
    KeyFramesType GetActiveKeyFrames();
    MapPointsType GetActiveMapPoints();

private:
    MapPointsType mapPoints_;
    MapPointsType activeMapPoints_;
    KeyFramesType keyFrames_;
    KeyFramesType activeKeyFrames_;
    std::mutex dataMutex_;

    size_t num_active_keyframes_ = 7;
};

}
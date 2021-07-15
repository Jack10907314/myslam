#include "MapPoint.h"

namespace myslam{

MapPoint::MapPoint(Vec3 position): position_(position) {}

void MapPoint::SetPosition(Vec3 position){
    std::unique_lock<std::mutex> lock(dataMutex_);
    position_ = position;
}

Vec3 MapPoint::GetPosition(){
    std::unique_lock<std::mutex> lock(dataMutex_);
    return position_;
}

void MapPoint::AddFrameObserve(Frame::Ptr framePtr){
    std::unique_lock<std::mutex> lock(dataMutex_);
    frameObserve_.push_back(framePtr);
}

}